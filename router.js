var express = require("express");
var router = express.Router();
require("dotenv").config();
let mysql = require("mysql");
var dbconfig = require("./database");
var connection = mysql.createConnection(dbconfig.connection);
connection.query("USE " + dbconfig.database);
//const redis=require("redis");
//const client = redis.createClient();
const moment = require("moment");
let now = moment();
const bcrypt = require("bcrypt");
const passport = require("passport");
const flash = require("connect-flash");
const nodemailer = require("nodemailer");
const smtpTransport = require("nodemailer-smtp-transport");
const random = require("random");
const validator = require("validator");
const multer = require("multer");
const path = require("path");
const {
    sendEmail,
    main,
    usersRoom,
    userLeave,
    getUserId,
    joinChat,
    formatMessage,
    oldMsg,
    storeMsg,
    role,
    cons,
    usernameFind,
    dede,
    trouver,
} = require("./fonctions");
//gets
router.get("/", function(req, res) {
    res.render("login", { message: req.flash("loginMessage") });
});
router.get("/signup", function(req, res) {
    res.render("signup");
});
router.get("/index", isLoggedIn, function(req, res) {
    connection.query("SELECT * FROM posts", function(err, result) {
        if (err) throw err;
        res.render("index", { user: req.user, posts: result });
    });
});
router.get("/add-post", isLoggedIn, function(req, res) {
    res.render("add-post", { user: req.user });
});
router.get("/settings", isLoggedIn, function(req, res) {
    res.render("settings", { user: req.user });
});
router.get("/profil", isLoggedIn, function(req, res) {
    connection.query(
        "SELECT * FROM posts WHERE email=?", [req.user.email],
        function(err, result) {
            if (err) throw err;
            res.render("profil", { user: req.user, posts: result });
        }
    );
});
router.get("/messages", isLoggedIn, function(req, res) {
    console.log(req.user);
    res.render("messages", { user: req.user });
});
router.get("/update-user", isLoggedIn, function(req, res) {
    res.render("update-user");
});
router.get("/conversation/:number", isLoggedIn, function(req, res) {
    /*connection.query(`SELECT * FROM room${req.params.number}`,function(err,result){
            if(err) throw err;
            //console.log(req.user)
            res.render("conversation",{msgs:result,user:req.user});
        })*/
    if (req.params.number == "General")
        res.render("conversation", { user: req.user });
    else if (req.params.number == req.user.speciality)
        res.render("conversation", { user: req.user });
    else res.redirect("/404");
});
router.get("/404", function(req, res) {
    res.render("404");
});

router.get("/post/:id", isLoggedIn, function(req, res) {
    connection.query("SELECT * FROM posts WHERE ID=?", [req.params.id], function(
        err,
        result
    ) {
        if (err) throw err;
        connection.query(
            "SELECT img FROM users WHERE email=?", [result[0].email],
            function(err, resusu) {
                if (err) throw err;
                connection.query(
                    "SELECT * FROM comments WHERE postID=?", [req.params.id],
                    function(err, resu) {
                        if (err) throw err;

                        res.render("single-post", {
                            user: req.user,
                            post: result[0],
                            comments: resu,
                            image: resusu[0],
                        });
                    }
                );
            }
        );
    });
});
router.get("/dash", isLoggedIn, function(req, res) {
    if (req.user.role == "admin") {
        connection.query("SELECT * FROM users WHERE role=?", ["user"], function(
            err,
            result
        ) {
            if (err) throw err;
            res.render("dash", { users: result, user: req.user });
        });
    } else {
        res.redirect("/404");
    }
});
router.get("/dash/email/:email", isLoggedIn, function(req, res) {
    if (req.user.role == "admin") {
        res.render("dash-email", { email: req.params.email });
    } else {
        res.redirect("/404");
    }
});
router.get("/dash/show/admins", isLoggedIn, function(req, res) {
    if (req.user.role == "admin") {
        connection.query("SELECT * FROM users WHERE role=?", ["admin"], function(
            err,
            result
        ) {
            if (err) throw err;
            res.render("dash-admins", { user: req.user, admins: result });
        });
    } else res.redirect("/404");
});
router.get("/dash/delete/:id", isLoggedIn, function(req, res) {
    if (req.user.role == "admin") {
        connection.query(
            "SELECT * FROM users WHERE id=?", [req.params.id],
            function(err, resultat) {
                if (err) throw err;
                if (resultat.length != 0) {
                    connection.query(
                        "DELETE FROM users WHERE id=?", [resultat[0].id],
                        function(err, result) {
                            if (err) throw err;
                        }
                    );
                    connection.query(
                        "DELETE FROM General WHERE email=?", [resultat[0].email],
                        function(err, resu) {
                            if (err) throw err;
                        }
                    );
                    connection.query(
                        `DELETE FROM ${resultat[0].speciality
              .replace(20, "")
              .replace("%", "")
              .replace("-", "")} WHERE email=?`, [resultat[0].email],
                        function(err, resusu) {
                            if (err) throw err;
                        }
                    );
                    connection.query(
                        "DELETE FROM posts WHERE email=?", [resultat[0].email],
                        function(err, ret) {
                            if (err) throw err;
                        }
                    );
                    connection.query(
                        "DELETE FROM comments WHERE email=?", [resultat[0].email],
                        function(err, re) {
                            if (err) throw err;
                        }
                    );
                }
                res.redirect("/dash");
            }
        );
        /*connection.query("DELETE FROM users WHERE id=?",[req.params.id],function(err,result){
  if(err) throw err;
  res.redirect("/dash")
})*/
    } else {
        res.redirect("/404");
    }
});
router.get("/dash/add/admin", isLoggedIn, function(req, res) {
    if (req.user.role == "admin") {
        res.render("dash-add-admin", { user: req.user });
    } else {
        res.redirect("/404");
    }
});

router.get("/user/post/:idpost", isLoggedIn, function(req, res) {
    connection.query(
        "SELECT email FROM posts WHERE ID=?", [req.params.idpost],
        function(err, result) {
            if (err) throw err;
            if (result.length == 0) res.redirect("/404");
            else {
                if (result[0].email == req.user.email) res.redirect("/profil");
                else {
                    connection.query(
                        "SELECT * FROM users WHERE email=?", [result[0].email],
                        function(err, resu) {
                            if (err) throw err;
                            console.log(resu[0]);
                            if (resu.length == 0) res.redirect("/404");
                            else {
                                connection.query(
                                    "SELECT * FROM posts WHERE email=?", [result[0].email],
                                    function(err, resi) {
                                        if (err) throw err;
                                        res.render("user", {
                                            user: req.user,
                                            userp: resu,
                                            posts: resi,
                                        });
                                    }
                                );
                            }
                        }
                    );
                }
            }
        }
    );
});
router.get("/user/:idcom", isLoggedIn, function(req, res) {
    connection.query(
        "SELECT email FROM comments WHERE ID=?", [req.params.idcom],
        function(err, result) {
            if (err) throw err;
            if (result.length == 0) res.redirect("/404");
            else {
                if (result[0].email == req.user.email) res.redirect("/profil");
                else {
                    connection.query(
                        "SELECT * FROM users WHERE email=?", [result[0].email],
                        function(err, resu) {
                            if (err) throw err;
                            if (resu.length == 0) res.redirect("/404");
                            else {
                                connection.query(
                                    "SELECT * FROM posts WHERE email=?", [result[0].email],
                                    function(err, resuu) {
                                        if (err) throw err;
                                        res.render("user", {
                                            user: req.user,
                                            userp: resu,
                                            posts: resuu,
                                        });
                                    }
                                );
                            }
                        }
                    );
                }
            }
        }
    );
});
//disconnect
router.get("/logout", isLoggedIn, (req, res) => {
    req.logOut();
    res.redirect("/");
});
//posts
router.post("/registered", function(req, res) {
    //console.log(req.body)
    if (!validator.isEmail(req.body.email)) {
        res.render("signup", { message: "Email erroned" });
    }
    if (
        req.body.password.length < 8 ||
        req.body.password != req.body.passwordconfirm
    ) {
        res.render("signup", {
            message: "Your password must contain atleast 8 characters and be confirmed correctly",
        });
    }
    if (
        validator.isEmail(req.body.email) &&
        req.body.password.length >= 8 &&
        req.body.password == req.body.passwordconfirm
    ) {
        connection.query(
            `SELECT * FROM users WHERE email=?`, [req.body.email],
            async function(err, rows) {
                if (err) throw err;
                if (rows.length) {
                    res.render("signup", { message: "You are already registred" });
                } else {
                    let toto = await random.int(1, 1000000);
                    let HPSW = bcrypt.hashSync(req.body.password, 10, null);
                    let activated = false;
                    //console.log(req.body)
                    connection.query(
                        "INSERT INTO users (Firstname,Lastname,email,speciality,password,activated,akey,role,sex) values (?,?,?,?,?,?,?,?,?)", [
                            req.body.firstname,
                            req.body.lastname,
                            req.body.email,
                            req.body.speciality,
                            HPSW,
                            activated,
                            toto,
                            "user",
                            req.body.sex,
                        ],
                        function(err, rows) {
                            if (err) throw err;
                            main(req.body.email, toto);
                            res.redirect("/");
                        }
                    );
                }
            }
        );
    }
});
router.post(
    "/index",
    passport.authenticate("local-login", {
        successRedirect: "/index",
        failureRedirect: "/",
        failureFlash: true,
    }),
    function(req, res) {
        if (req.body.remember) {
            req.session.cookie.maxAge = 1000 * 60 * 3;
        } else {
            req.session.cookie.expires = false;
        }
    }
);
router.post("/add-post", isLoggedIn, function(req, res) {
    upload(req, res, (err) => {
        {
            if (req.body.titre.trim().length === 0) {
                res.render("add-post", { msg: "Le titre doit être spécifié" });
            } else if (req.body.contenu.trim().length === 0) {
                res.render("add-post", { msg: "Le contenu du post ne peut être vide" });
            } else {
                if (req.file == undefined) {
                    connection.query(
                        "INSERT INTO posts SET email=?,firstname=?,lastname=?,time=?,date=?,text=?,title=?", [
                            req.user.email,
                            req.user.Firstname,
                            req.user.Lastname,
                            now.format("h:mm:ss a"),
                            now.format("DD-MM-YYYY"),
                            req.body.contenu,
                            req.body.titre,
                        ],
                        (err, result) => {
                            if (err) throw err;
                            console.log(result);
                            res.redirect("/index");
                        }
                    );
                } else {
                    connection.query(
                        "INSERT INTO posts SET email=?,firstname=?,lastname=?,time=?,date=?,path=?,text=?,title=?", [
                            req.user.email,
                            req.user.Firstname,
                            req.user.Lastname,
                            now.format("h:mm:ss a"),
                            now.format("DD-MM-YYYY"),
                            req.file.filename,
                            req.body.contenu,
                            req.body.titre,
                        ],
                        (err, result) => {
                            if (err) throw err;
                            console.log(result);
                            res.redirect("/index");
                        }
                    );
                }
            }
        }
    });
});
router.post("/post/:id", isLoggedIn, function(req, res) {
    connection.query(
        "INSERT INTO comments SET postID=?,email=?,firstname=?,lastname=?,text=?,time=?,date=?", [
            req.params.id,
            req.user.email,
            req.user.Firstname,
            req.user.Lastname,
            req.body.commentText,
            now.format("h:mm:ss a"),
            now.format("DD-MM-YYYY"),
        ],
        function(err, result) {
            if (err) throw err;
            res.redirect(`/post/${req.params.id}`);
        }
    );
});
//here need fix
router.post("/update-user", isLoggedIn, function(req, res) {
    connection.query(
        "SELECT * FROM users WHERE email=?", [req.user.email],
        function(err, result) {
            if (err) throw err;
            if (bcrypt.compareSync(req.body.password, result[0].password)) {
                if (req.body.npassword.length >= 8) {
                    let nhashed = bcrypt.hashSync(req.body.npassword, 10, null);
                    connection.query(
                        "UPDATE users SET Lastname=?,Firstname=?,sex=?,password=? WHERE email=?", [
                            req.body.nom,
                            req.body.prenom,
                            req.body.sex,
                            nhashed,
                            req.user.email,
                        ],
                        function(err, resu) {
                            if (err) throw err;
                        }
                    );
                } else {
                    res.render("update-user", {
                        msg: "Nouveau mot de passe incompatible",
                    });
                }
            } else {
                res.render("update-user", { msg: "Mot de passe incorrect" });
            }
        }
    );
});
router.post("/profil", isLoggedIn, function(req, res) {
    upload2(req, res, (err) => {
        if (err) {
            console.log(err);
            res.redirect("/profil");
        } else {
            if (req.file == undefined) {
                res.redirect("/profil");
            } else {
                connection.query(
                    "UPDATE users SET img=? WHERE email=?", [req.file.filename, req.user.email],
                    function(err, result) {
                        if (err) throw err;
                    }
                );
                res.redirect("/profil");
            }
        }
    });
});
router.post("/dash-email/:email", isLoggedIn, function(req, res) {
    sendEmail(req.params.email, req.body.email);
    res.redirect("/dash");
});
router.post("/dash/add/admin", isLoggedIn, function(req, res) {
    if (req.user.role == "admin") {
        if (!validator.isEmail(req.body.email)) {
            res.render("dash-add-admin", { message: "Email erroned" });
        }
        if (req.body.password.length < 8) {
            res.render("dash-add-admin", {
                message: "Your password must contain atleast 8 characters",
            });
        }
        if (validator.isEmail(req.body.email) && req.body.password.length >= 8) {
            connection.query(
                `SELECT * FROM users WHERE email=?`, [req.body.email],
                async function(err, rows) {
                    if (err) throw err;
                    if (rows.length) {
                        res.render("dash-add-admin", {
                            message: "You are already registred",
                        });
                    } else {
                        let HPSW = bcrypt.hashSync(req.body.password, 10, null);
                        let activated = 1;
                        connection.query(
                            "INSERT INTO users (Firstname,Lastname,email, password,activated,role,sex) values (?,?,?,?,?,?,?)", [
                                req.body.prenom,
                                req.body.nom,
                                req.body.email,
                                HPSW,
                                activated,
                                "admin",
                                req.body.sex,
                            ],
                            function(err, rows) {
                                if (err) throw err;
                                res.redirect("/dash");
                            }
                        );
                    }
                }
            );
        }
    } else res.redirect("/404");
});
//verification function
function isLoggedIn(req, res, next) {
    if (req.isAuthenticated()) return next();

    res.redirect("/");
}
//multer
// Set The Storage Engine
const storage2 = multer.diskStorage({
    destination: "./public/profilPicture/",
    filename: function(req, file, cb) {
        cb(
            null,
            file.fieldname + "-" + Date.now() + path.extname(file.originalname)
        );
    },
});
// Init Upload
const upload2 = multer({
    storage: storage2,
    limits: { fileSize: 1000000 },
    fileFilter: function(req, file, cb) {
        checkFileType(file, cb);
    },
}).single("profilePicture");
// Check File Type
function checkFileType(file, cb) {
    // Allowed ext
    const filetypes = /jpeg|jpg|png/;
    // Check ext
    const extname = filetypes.test(path.extname(file.originalname).toLowerCase());
    // Check mime
    const mimetype = filetypes.test(file.mimetype);

    if (mimetype && extname) {
        return cb(null, true);
    } else {
        cb("Error: Images Only!");
    }
}

// Set The Storage Engine
const storage = multer.diskStorage({
    destination: "./public/uploads/",
    filename: function(req, file, cb) {
        cb(
            null,
            file.fieldname + "-" + Date.now() + path.extname(file.originalname)
        );
    },
});
// Init Upload
const upload = multer({
    storage: storage,
    fileFilter: function(req, file, cb) {
        checkFileType(file, cb);
    },
}).single("myImage");
// Check File Type
function checkFileType(file, cb) {
    // Allowed ext
    const filetypes = /jpeg|jpg|png|webp/;
    // Check ext
    const extname = filetypes.test(path.extname(file.originalname).toLowerCase());
    // Check mime
    const mimetype = filetypes.test(file.mimetype);

    if (mimetype && extname) {
        return cb(null, true);
    } else {
        cb("Error: Images Only!");
    }
}
module.exports = router;
require("dotenv").config()
let mysql=require('mysql');
var dbconfig = require('./database');
var connection = mysql.createConnection(dbconfig.connection);
connection.query('USE ' + dbconfig.database);
const moment=require("moment")
let now=moment();
const path=require("path")
const bodyParser=require("body-parser");
var cookieParser = require('cookie-parser');
const http=require("http")
const socketio=require('socket.io');
const express = require('express')
const passport=require("passport");
const session=require("express-session");
const app = express();
const server=http.createServer(app);
const io=socketio(server);
const methodOverride = require('method-override');
const flash = require('connect-flash');
const multer=require("multer")
const {sendEmail,main,usersRoom,userLeave,getUserId,joinChat,formatMessage,oldMsg,storeMsg,cons,usernameFind,dede,trouver}=require("./fonctions")
//app.use/set
app.use(express.static("public"))
app.use(methodOverride('_method'))
app.use(flash());
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true
}));
const ejs=require("ejs");

//set and use
app.set("view engine",'ejs')
app.use(bodyParser.json());
app.use(express.urlencoded({extended:true}));
const initialize=require("./passport-config")(passport);
app.use(passport.initialize());
app.use(passport.session());
app.use(flash());
app.use(cookieParser());
//router
app.use('/', require("./router"));
//socket.io
io.on('connection',socket=>{
socket.on("joined",async ({username,lastname,email,room,img})=>{
  trouver(email,function(verif,res){
    if(verif==true) socket.disconnect();
    if(verif==false){
      joinChat(socket.id,username,lastname,email,room,img,function(element){
        console.log(element)
        socket.join(element.room);
        oldMsg(socket,element.room)
      })
    }
  })
  //message
  socket.on("onMessage",(message,username,email,lastname,role,room,img)=>{
      io.to(room).emit("message",message,email,img);
      storeMsg(room,email,username,lastname,message,img);
    })
  //disconnect
socket.on("disconnect",()=>{
  let user=userLeave(socket.id,function(resu){
    if(resu!=null){
    usersRoom(resu.room,function(t){
    io.to(resu.room).emit('roomUsers',{room:resu.room,users:t})
    })}
  });
        })
})
})
//PORTS
const PORT=8080||process.env.PORT;
server.listen(PORT,()=>{console.log("server started running on port:"+PORT)});
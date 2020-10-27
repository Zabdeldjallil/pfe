-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 26 oct. 2020 à 20:15
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test5`
--

-- --------------------------------------------------------

--
-- Structure de la table `anatomiepathologique`
--

CREATE TABLE `anatomiepathologique` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `anesthesiereanimation`
--

CREATE TABLE `anesthesiereanimation` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `anesthesiereanimation`
--

INSERT INTO `anesthesiereanimation` (`id`, `pdp`, `email`, `username`, `lastname`, `message`, `img`, `time`, `date`) VALUES
(2, '/profilPicture/', 'djilou500@hotmail.op', 'djallil', 'zitouni', 'comment elle va ?', NULL, '2:26:54 PM', '10/26/2020');

-- --------------------------------------------------------

--
-- Structure de la table `biochimie`
--

CREATE TABLE `biochimie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `biochimie`
--

INSERT INTO `biochimie` (`id`, `pdp`, `email`, `username`, `lastname`, `message`, `img`, `time`, `date`) VALUES
(1, '/profilPicture/', 'djilou500@hotmail.op', 'djallil', 'zitouni', 'now ?', NULL, '2:39:43 PM', '10/26/2020');

-- --------------------------------------------------------

--
-- Structure de la table `biologieclinique`
--

CREATE TABLE `biologieclinique` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cardiologie`
--

CREATE TABLE `cardiologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chirurgie cardio vasculaire`
--

CREATE TABLE `chirurgie cardio vasculaire` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chirurgiegenerale`
--

CREATE TABLE `chirurgiegenerale` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chirurgie maxillo faciale`
--

CREATE TABLE `chirurgie maxillo faciale` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chirurgieorthopedique`
--

CREATE TABLE `chirurgieorthopedique` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chirurgiepediatrique`
--

CREATE TABLE `chirurgiepediatrique` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chirurgie urologique`
--

CREATE TABLE `chirurgie urologique` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `email` text NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`ID`, `postID`, `email`, `firstname`, `lastname`, `text`, `title`, `time`, `date`) VALUES
(6, 29, 'djilou500@hotmail.fr', 'sqs', 'q', 'sdqsd', '', '5:48:35 pm', '16-10-2020'),
(7, 29, 'djilou500@hotmail.fr', 'sqs', 'q', 'qsdqsd', '', '5:48:35 pm', '16-10-2020'),
(8, 38, 'djilou500@hotmail.fr', 'sqs', 'q', 'qsdqsd', NULL, '2:17:38 pm', '17-10-2020'),
(9, 38, 'djilou500@hotmail.fr', 'sqs', 'q', 'sdqsdqsd', NULL, '2:17:38 pm', '17-10-2020'),
(10, 38, 'djilou500@hotmail.fr', 'sqs', 'q', 'coucou', NULL, '1:57:29 pm', '19-10-2020'),
(11, 38, 'djilou500@hotmail.fr', 'sqs', 'q', 'another one', NULL, '2:51:29 pm', '19-10-2020'),
(12, 38, 'djillou500@gmail.com', 'Abdeldjallil', 'Zitouni', 'we the best music', NULL, '2:51:29 pm', '19-10-2020'),
(13, 42, 'djilou500@hotmail.fr', 'sqs', 'q', 'now ', NULL, '2:57:44 pm', '19-10-2020'),
(14, 42, 'djillou500@gmail.com', 'Abdeldjallil', 'Zitouni', 'qsdqsdqsd', NULL, '2:57:44 pm', '19-10-2020'),
(15, 43, 'djillou500@gmail.com', 'Abdeldjallil', 'Zitouni', 'je commente ma propre pub', NULL, '2:57:44 pm', '19-10-2020'),
(16, 44, 'djilou500@hotmail.fr', 'sqs', 'q', 'coucou', NULL, '2:47:37 pm', '26-10-2020');

-- --------------------------------------------------------

--
-- Structure de la table `dermatologie`
--

CREATE TABLE `dermatologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `endocrinologie diabetologie`
--

CREATE TABLE `endocrinologie diabetologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `gastro entérologie`
--

CREATE TABLE `gastro entérologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `general`
--

INSERT INTO `general` (`id`, `pdp`, `email`, `username`, `lastname`, `message`, `img`, `time`, `date`) VALUES
(1, '/profilPicture/', 'djilou500@hotmail.op', 'djallil', 'zitouni', 'coucou', NULL, '2:30:49 PM', '10/26/2020');

-- --------------------------------------------------------

--
-- Structure de la table `gynéco obstétrique`
--

CREATE TABLE `gynéco obstétrique` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `histo-embryologie`
--

CREATE TABLE `histo-embryologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `hématologie`
--

CREATE TABLE `hématologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `hémobiologie`
--

CREATE TABLE `hémobiologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `immunologie`
--

CREATE TABLE `immunologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `maladies infectieuses`
--

CREATE TABLE `maladies infectieuses` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `microbiologie`
--

CREATE TABLE `microbiologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `médecine du travail`
--

CREATE TABLE `médecine du travail` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `médecine interne`
--

CREATE TABLE `médecine interne` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `médecine légale`
--

CREATE TABLE `médecine légale` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `médecine nucléaire`
--

CREATE TABLE `médecine nucléaire` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `neurochirurgie`
--

CREATE TABLE `neurochirurgie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `neurologie`
--

CREATE TABLE `neurologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `néphrologie`
--

CREATE TABLE `néphrologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `o.r.l.`
--

CREATE TABLE `o.r.l.` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `oncologie médicale`
--

CREATE TABLE `oncologie médicale` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ophtalmologie`
--

CREATE TABLE `ophtalmologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `parasitologie`
--

CREATE TABLE `parasitologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `pharmacologie clinique`
--

CREATE TABLE `pharmacologie clinique` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `physiologie`
--

CREATE TABLE `physiologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `pneumo phtisiologie`
--

CREATE TABLE `pneumo phtisiologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `ID` int(11) NOT NULL,
  `email` text NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL,
  `path` text DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `psychiatrie`
--

CREATE TABLE `psychiatrie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `pédiatrie`
--

CREATE TABLE `pédiatrie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `radiologie`
--

CREATE TABLE `radiologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `radiothérapie`
--

CREATE TABLE `radiothérapie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rhumatologie`
--

CREATE TABLE `rhumatologie` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rééducation fonctionnelle`
--

CREATE TABLE `rééducation fonctionnelle` (
  `id` int(11) NOT NULL,
  `pdp` text DEFAULT NULL,
  `email` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `time` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `akey` int(11) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `img` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `Firstname`, `Lastname`, `speciality`, `email`, `password`, `activated`, `akey`, `role`, `sex`, `img`) VALUES
(1, 'Abdeldjallil', 'Zitouni', '', 'djillou500@gmail.com', '$2b$10$TxbVDX8bE01u7wej5D9a3enCtEqPwvao.mX6rX5FkUhE/WsNmrJnq', 1, NULL, 'admin', '', 'profilePicture-1602944953739.png'),
(2, 'sqs', 'q', '', 'djilou500@hotmail.fr', '$2b$10$G8fUtxmck2s5ozJksaxfvuYaBwSlZXEgDPZl7aDlocB/3rTUAoZ6O', 1, NULL, 'user', 'male', 'profilePicture-1602943255164.png'),
(3, 'moumou', 'mounou', '', 'djillou5000@gmail.com', '$2b$10$X1quSf06/WNYNLDDIPMsx.t/pTVu8xO2nbDl1S1dWjDM6TGvc/i72', 1, NULL, 'admin', '', ''),
(7, 'HAMZA', 'ZITOUNI', '', 'djillou500@gmail.coms', '$2b$10$mlZmAWs07Yz5oZkT55ahNONmeuGMRxHEQIHB1p80uZzBom8GOvfPS', 1, NULL, 'admin', 'homme', NULL),
(9, 'sqsqs', 'zeghlache', 'Chirurgie urologique', 'djilou500@hotmail.frqqq', '$2b$10$FN6iEXYG5P/C/pykq5PCG.W1OwBqEtizcZcWzKky8ngqZCetsRlj6', 1, 11772, 'user', 'female', NULL),
(12, 'djallil', 'zitouni', 'Anesthesie-reanimation', 'djilou500@hotmail.op', '$2b$10$Jsfd369hYsIvaibFJWYsSOsHYiS6RFYxOWaGHiKUCN2CGxlaYxMqy', 0, 772278, 'user', 'male', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `anatomiepathologique`
--
ALTER TABLE `anatomiepathologique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `anesthesiereanimation`
--
ALTER TABLE `anesthesiereanimation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `biochimie`
--
ALTER TABLE `biochimie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `biologieclinique`
--
ALTER TABLE `biologieclinique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardiologie`
--
ALTER TABLE `cardiologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chirurgie cardio vasculaire`
--
ALTER TABLE `chirurgie cardio vasculaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chirurgiegenerale`
--
ALTER TABLE `chirurgiegenerale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chirurgie maxillo faciale`
--
ALTER TABLE `chirurgie maxillo faciale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chirurgieorthopedique`
--
ALTER TABLE `chirurgieorthopedique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chirurgiepediatrique`
--
ALTER TABLE `chirurgiepediatrique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chirurgie urologique`
--
ALTER TABLE `chirurgie urologique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `dermatologie`
--
ALTER TABLE `dermatologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `endocrinologie diabetologie`
--
ALTER TABLE `endocrinologie diabetologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gastro entérologie`
--
ALTER TABLE `gastro entérologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gynéco obstétrique`
--
ALTER TABLE `gynéco obstétrique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `histo-embryologie`
--
ALTER TABLE `histo-embryologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hématologie`
--
ALTER TABLE `hématologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hémobiologie`
--
ALTER TABLE `hémobiologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `immunologie`
--
ALTER TABLE `immunologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maladies infectieuses`
--
ALTER TABLE `maladies infectieuses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `microbiologie`
--
ALTER TABLE `microbiologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `médecine du travail`
--
ALTER TABLE `médecine du travail`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `médecine interne`
--
ALTER TABLE `médecine interne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `médecine légale`
--
ALTER TABLE `médecine légale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `médecine nucléaire`
--
ALTER TABLE `médecine nucléaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `neurochirurgie`
--
ALTER TABLE `neurochirurgie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `neurologie`
--
ALTER TABLE `neurologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `néphrologie`
--
ALTER TABLE `néphrologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `o.r.l.`
--
ALTER TABLE `o.r.l.`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oncologie médicale`
--
ALTER TABLE `oncologie médicale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ophtalmologie`
--
ALTER TABLE `ophtalmologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parasitologie`
--
ALTER TABLE `parasitologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pharmacologie clinique`
--
ALTER TABLE `pharmacologie clinique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `physiologie`
--
ALTER TABLE `physiologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pneumo phtisiologie`
--
ALTER TABLE `pneumo phtisiologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `psychiatrie`
--
ALTER TABLE `psychiatrie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pédiatrie`
--
ALTER TABLE `pédiatrie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `radiologie`
--
ALTER TABLE `radiologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `radiothérapie`
--
ALTER TABLE `radiothérapie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rhumatologie`
--
ALTER TABLE `rhumatologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rééducation fonctionnelle`
--
ALTER TABLE `rééducation fonctionnelle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `anatomiepathologique`
--
ALTER TABLE `anatomiepathologique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `anesthesiereanimation`
--
ALTER TABLE `anesthesiereanimation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `biochimie`
--
ALTER TABLE `biochimie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `biologieclinique`
--
ALTER TABLE `biologieclinique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cardiologie`
--
ALTER TABLE `cardiologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chirurgie cardio vasculaire`
--
ALTER TABLE `chirurgie cardio vasculaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chirurgiegenerale`
--
ALTER TABLE `chirurgiegenerale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chirurgie maxillo faciale`
--
ALTER TABLE `chirurgie maxillo faciale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chirurgieorthopedique`
--
ALTER TABLE `chirurgieorthopedique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chirurgiepediatrique`
--
ALTER TABLE `chirurgiepediatrique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chirurgie urologique`
--
ALTER TABLE `chirurgie urologique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `dermatologie`
--
ALTER TABLE `dermatologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `endocrinologie diabetologie`
--
ALTER TABLE `endocrinologie diabetologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gastro entérologie`
--
ALTER TABLE `gastro entérologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gynéco obstétrique`
--
ALTER TABLE `gynéco obstétrique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `histo-embryologie`
--
ALTER TABLE `histo-embryologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hématologie`
--
ALTER TABLE `hématologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hémobiologie`
--
ALTER TABLE `hémobiologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `immunologie`
--
ALTER TABLE `immunologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `maladies infectieuses`
--
ALTER TABLE `maladies infectieuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `microbiologie`
--
ALTER TABLE `microbiologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `médecine du travail`
--
ALTER TABLE `médecine du travail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `médecine interne`
--
ALTER TABLE `médecine interne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `médecine légale`
--
ALTER TABLE `médecine légale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `médecine nucléaire`
--
ALTER TABLE `médecine nucléaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `neurochirurgie`
--
ALTER TABLE `neurochirurgie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `neurologie`
--
ALTER TABLE `neurologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `néphrologie`
--
ALTER TABLE `néphrologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `o.r.l.`
--
ALTER TABLE `o.r.l.`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `oncologie médicale`
--
ALTER TABLE `oncologie médicale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ophtalmologie`
--
ALTER TABLE `ophtalmologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parasitologie`
--
ALTER TABLE `parasitologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pharmacologie clinique`
--
ALTER TABLE `pharmacologie clinique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `physiologie`
--
ALTER TABLE `physiologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pneumo phtisiologie`
--
ALTER TABLE `pneumo phtisiologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `psychiatrie`
--
ALTER TABLE `psychiatrie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pédiatrie`
--
ALTER TABLE `pédiatrie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `radiologie`
--
ALTER TABLE `radiologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `radiothérapie`
--
ALTER TABLE `radiothérapie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rhumatologie`
--
ALTER TABLE `rhumatologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rééducation fonctionnelle`
--
ALTER TABLE `rééducation fonctionnelle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

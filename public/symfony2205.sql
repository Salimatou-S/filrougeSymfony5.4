-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 04 mai 2022 à 01:14
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfony2205`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nom_categorie` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `montant_ht` double NOT NULL,
  `montant_ttc` double NOT NULL,
  `date_creation` datetime NOT NULL,
  `mode_paiement` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_livraison` datetime DEFAULT NULL,
  `frais_livraison` double NOT NULL,
  `concerner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commente`
--

CREATE TABLE `commente` (
  `id` int(11) NOT NULL,
  `contenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_commentaire` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `concerner`
--

CREATE TABLE `concerner` (
  `id` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220503203435', '2022-05-03 22:34:49', 62),
('DoctrineMigrations\\Version20220503204628', '2022-05-03 22:46:44', 46),
('DoctrineMigrations\\Version20220503205724', '2022-05-03 22:57:57', 101),
('DoctrineMigrations\\Version20220503222123', '2022-05-04 00:22:35', 225),
('DoctrineMigrations\\Version20220503224542', '2022-05-04 00:45:52', 235),
('DoctrineMigrations\\Version20220503225942', '2022-05-04 00:59:55', 206),
('DoctrineMigrations\\Version20220503230621', '2022-05-04 01:06:28', 84),
('DoctrineMigrations\\Version20220503231035', '2022-05-04 01:10:45', 177);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` int(11) NOT NULL,
  `raison_sociale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_fournisseur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville_fournisseur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` int(11) NOT NULL,
  `pays` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
(5, 'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:6:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}s:57:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\\";a:4:{i:0;O:57:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\\":1:{s:61:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\0id\\\";i:1;}i:1;O:57:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\\":1:{s:61:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\0id\\\";i:2;}i:2;O:57:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\\":1:{s:61:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\0id\\\";i:3;}i:3;O:57:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\\":1:{s:61:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\TransportMessageIdStamp\\0id\\\";i:4;}}s:51:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\ErrorDetailsStamp\\\";a:1:{i:0;O:51:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\ErrorDetailsStamp\\\":4:{s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\ErrorDetailsStamp\\0exceptionClass\\\";s:53:\\\"Symfony\\\\Component\\\\Mailer\\\\Exception\\\\TransportException\\\";s:66:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\ErrorDetailsStamp\\0exceptionCode\\\";i:0;s:69:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\ErrorDetailsStamp\\0exceptionMessage\\\";s:220:\\\"Connection could not be established with host \\\"localhost:1025\\\": stream_socket_client(): Unable to connect to localhost:1025 (Aucune connexion n’a pu être établie car l’ordinateur cible l’a expressément refusée)\\\";s:69:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\ErrorDetailsStamp\\0flattenException\\\";O:57:\\\"Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\\":12:{s:66:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0message\\\";s:220:\\\"Connection could not be established with host \\\"localhost:1025\\\": stream_socket_client(): Unable to connect to localhost:1025 (Aucune connexion n’a pu être établie car l’ordinateur cible l’a expressément refusée)\\\";s:63:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0code\\\";i:0;s:67:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0previous\\\";N;s:64:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0trace\\\";a:31:{i:0;a:8:{s:9:\\\"namespace\\\";s:0:\\\"\\\";s:11:\\\"short_class\\\";s:0:\\\"\\\";s:5:\\\"class\\\";s:0:\\\"\\\";s:4:\\\"type\\\";s:0:\\\"\\\";s:8:\\\"function\\\";s:0:\\\"\\\";s:4:\\\"file\\\";s:95:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream.php\\\";s:4:\\\"line\\\";i:154;s:4:\\\"args\\\";a:0:{}}i:1;a:8:{s:9:\\\"namespace\\\";s:46:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\Stream\\\";s:11:\\\"short_class\\\";s:12:\\\"SocketStream\\\";s:5:\\\"class\\\";s:59:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:56:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\Stream\\\\{closure}\\\";s:4:\\\"file\\\";N;s:4:\\\"line\\\";N;s:4:\\\"args\\\";a:4:{i:0;a:2:{i:0;s:7:\\\"integer\\\";i:1;i:2;}i:1;a:2:{i:0;s:6:\\\"string\\\";i:1;s:156:\\\"stream_socket_client(): Unable to connect to localhost:1025 (Aucune connexion n’a pu être établie car l’ordinateur cible l’a expressément refusée)\\\";}i:2;a:2:{i:0;s:6:\\\"string\\\";i:1;s:95:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream.php\\\";}i:3;a:2:{i:0;s:7:\\\"integer\\\";i:1;i:157;}}}i:2;a:8:{s:9:\\\"namespace\\\";s:0:\\\"\\\";s:11:\\\"short_class\\\";s:0:\\\"\\\";s:5:\\\"class\\\";s:0:\\\"\\\";s:4:\\\"type\\\";s:0:\\\"\\\";s:8:\\\"function\\\";s:20:\\\"stream_socket_client\\\";s:4:\\\"file\\\";s:95:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream.php\\\";s:4:\\\"line\\\";i:157;s:4:\\\"args\\\";a:6:{i:0;a:2:{i:0;s:6:\\\"string\\\";i:1;s:14:\\\"localhost:1025\\\";}i:1;a:2:{i:0;s:7:\\\"integer\\\";i:1;i:0;}i:2;a:2:{i:0;s:6:\\\"string\\\";i:1;s:0:\\\"\\\";}i:3;a:2:{i:0;s:5:\\\"float\\\";i:1;d:60;}i:4;a:2:{i:0;s:7:\\\"integer\\\";i:1;i:4;}i:5;a:2:{i:0;s:8:\\\"resource\\\";i:1;s:14:\\\"stream-context\\\";}}}i:3;a:8:{s:9:\\\"namespace\\\";s:46:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\Stream\\\";s:11:\\\"short_class\\\";s:12:\\\"SocketStream\\\";s:5:\\\"class\\\";s:59:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:10:\\\"initialize\\\";s:4:\\\"file\\\";s:89:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\SmtpTransport.php\\\";s:4:\\\"line\\\";i:251;s:4:\\\"args\\\";a:0:{}}i:4;a:8:{s:9:\\\"namespace\\\";s:39:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\";s:11:\\\"short_class\\\";s:13:\\\"SmtpTransport\\\";s:5:\\\"class\\\";s:53:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\SmtpTransport\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:5:\\\"start\\\";s:4:\\\"file\\\";s:89:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\SmtpTransport.php\\\";s:4:\\\"line\\\";i:194;s:4:\\\"args\\\";a:0:{}}i:5;a:8:{s:9:\\\"namespace\\\";s:39:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\";s:11:\\\"short_class\\\";s:13:\\\"SmtpTransport\\\";s:5:\\\"class\\\";s:53:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\SmtpTransport\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:6:\\\"doSend\\\";s:4:\\\"file\\\";s:88:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\AbstractTransport.php\\\";s:4:\\\"line\\\";i:71;s:4:\\\"args\\\";a:1:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Mailer\\\\SentMessage\\\";}}}i:6;a:8:{s:9:\\\"namespace\\\";s:34:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\";s:11:\\\"short_class\\\";s:17:\\\"AbstractTransport\\\";s:5:\\\"class\\\";s:52:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\AbstractTransport\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:4:\\\"send\\\";s:4:\\\"file\\\";s:89:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\SmtpTransport.php\\\";s:4:\\\"line\\\";i:136;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Mailer\\\\SentMessage\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:40:\\\"Symfony\\\\Component\\\\Mailer\\\\DelayedEnvelope\\\";}}}i:7;a:8:{s:9:\\\"namespace\\\";s:39:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\";s:11:\\\"short_class\\\";s:13:\\\"SmtpTransport\\\";s:5:\\\"class\\\";s:53:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\SmtpTransport\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:4:\\\"send\\\";s:4:\\\"file\\\";s:81:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Transports.php\\\";s:4:\\\"line\\\";i:51;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\";}i:1;a:2:{i:0;s:4:\\\"null\\\";i:1;N;}}}i:8;a:8:{s:9:\\\"namespace\\\";s:34:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\";s:11:\\\"short_class\\\";s:10:\\\"Transports\\\";s:5:\\\"class\\\";s:45:\\\"Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Transports\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:4:\\\"send\\\";s:4:\\\"file\\\";s:85:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Messenger\\\\MessageHandler.php\\\";s:4:\\\"line\\\";i:31;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\";}i:1;a:2:{i:0;s:4:\\\"null\\\";i:1;N;}}}i:9;a:8:{s:9:\\\"namespace\\\";s:34:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\";s:11:\\\"short_class\\\";s:14:\\\"MessageHandler\\\";s:5:\\\"class\\\";s:49:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\MessageHandler\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:8:\\\"__invoke\\\";s:4:\\\"file\\\";s:98:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\HandleMessageMiddleware.php\\\";s:4:\\\"line\\\";i:96;s:4:\\\"args\\\";a:1:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\";}}}i:10;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\";s:11:\\\"short_class\\\";s:23:\\\"HandleMessageMiddleware\\\";s:5:\\\"class\\\";s:62:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\HandleMessageMiddleware\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:6:\\\"handle\\\";s:4:\\\"file\\\";s:96:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\SendMessageMiddleware.php\\\";s:4:\\\"line\\\";i:74;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:53:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack\\\";}}}i:11;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\";s:11:\\\"short_class\\\";s:21:\\\"SendMessageMiddleware\\\";s:5:\\\"class\\\";s:60:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\SendMessageMiddleware\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:6:\\\"handle\\\";s:4:\\\"file\\\";s:108:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\FailedMessageProcessingMiddleware.php\\\";s:4:\\\"line\\\";i:34;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:53:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack\\\";}}}i:12;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\";s:11:\\\"short_class\\\";s:33:\\\"FailedMessageProcessingMiddleware\\\";s:5:\\\"class\\\";s:72:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\FailedMessageProcessingMiddleware\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:6:\\\"handle\\\";s:4:\\\"file\\\";s:108:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\DispatchAfterCurrentBusMiddleware.php\\\";s:4:\\\"line\\\";i:68;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:53:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack\\\";}}}i:13;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\";s:11:\\\"short_class\\\";s:33:\\\"DispatchAfterCurrentBusMiddleware\\\";s:5:\\\"class\\\";s:72:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\DispatchAfterCurrentBusMiddleware\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:6:\\\"handle\\\";s:4:\\\"file\\\";s:109:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\RejectRedeliveredMessageMiddleware.php\\\";s:4:\\\"line\\\";i:48;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:53:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack\\\";}}}i:14;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\";s:11:\\\"short_class\\\";s:34:\\\"RejectRedeliveredMessageMiddleware\\\";s:5:\\\"class\\\";s:73:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\RejectRedeliveredMessageMiddleware\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:6:\\\"handle\\\";s:4:\\\"file\\\";s:100:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\AddBusNameStampMiddleware.php\\\";s:4:\\\"line\\\";i:37;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:53:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack\\\";}}}i:15;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\";s:11:\\\"short_class\\\";s:25:\\\"AddBusNameStampMiddleware\\\";s:5:\\\"class\\\";s:64:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\AddBusNameStampMiddleware\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:6:\\\"handle\\\";s:4:\\\"file\\\";s:94:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\TraceableMiddleware.php\\\";s:4:\\\"line\\\";i:43;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:53:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack\\\";}}}i:16;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\";s:11:\\\"short_class\\\";s:19:\\\"TraceableMiddleware\\\";s:5:\\\"class\\\";s:58:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableMiddleware\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:6:\\\"handle\\\";s:4:\\\"file\\\";s:74:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\MessageBus.php\\\";s:4:\\\"line\\\";i:77;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:53:\\\"Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack\\\";}}}i:17;a:8:{s:9:\\\"namespace\\\";s:27:\\\"Symfony\\\\Component\\\\Messenger\\\";s:11:\\\"short_class\\\";s:10:\\\"MessageBus\\\";s:5:\\\"class\\\";s:38:\\\"Symfony\\\\Component\\\\Messenger\\\\MessageBus\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:8:\\\"dispatch\\\";s:4:\\\"file\\\";s:83:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\TraceableMessageBus.php\\\";s:4:\\\"line\\\";i:41;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:5:\\\"array\\\";i:1;a:0:{}}}}i:18;a:8:{s:9:\\\"namespace\\\";s:27:\\\"Symfony\\\\Component\\\\Messenger\\\";s:11:\\\"short_class\\\";s:19:\\\"TraceableMessageBus\\\";s:5:\\\"class\\\";s:47:\\\"Symfony\\\\Component\\\\Messenger\\\\TraceableMessageBus\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:8:\\\"dispatch\\\";s:4:\\\"file\\\";s:82:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\RoutableMessageBus.php\\\";s:4:\\\"line\\\";i:54;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:5:\\\"array\\\";i:1;a:0:{}}}}i:19;a:8:{s:9:\\\"namespace\\\";s:27:\\\"Symfony\\\\Component\\\\Messenger\\\";s:11:\\\"short_class\\\";s:18:\\\"RoutableMessageBus\\\";s:5:\\\"class\\\";s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\RoutableMessageBus\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:8:\\\"dispatch\\\";s:4:\\\"file\\\";s:70:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Worker.php\\\";s:4:\\\"line\\\";i:160;s:4:\\\"args\\\";a:1:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}}}i:20;a:8:{s:9:\\\"namespace\\\";s:27:\\\"Symfony\\\\Component\\\\Messenger\\\";s:11:\\\"short_class\\\";s:6:\\\"Worker\\\";s:5:\\\"class\\\";s:34:\\\"Symfony\\\\Component\\\\Messenger\\\\Worker\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:13:\\\"handleMessage\\\";s:4:\\\"file\\\";s:70:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Worker.php\\\";s:4:\\\"line\\\";i:108;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\";}i:1;a:2:{i:0;s:6:\\\"string\\\";i:1;s:5:\\\"async\\\";}}}i:21;a:8:{s:9:\\\"namespace\\\";s:27:\\\"Symfony\\\\Component\\\\Messenger\\\";s:11:\\\"short_class\\\";s:6:\\\"Worker\\\";s:5:\\\"class\\\";s:34:\\\"Symfony\\\\Component\\\\Messenger\\\\Worker\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:3:\\\"run\\\";s:4:\\\"file\\\";s:94:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Command\\\\ConsumeMessagesCommand.php\\\";s:4:\\\"line\\\";i:225;s:4:\\\"args\\\";a:1:{i:0;a:2:{i:0;s:5:\\\"array\\\";i:1;a:1:{s:5:\\\"sleep\\\";a:2:{i:0;s:7:\\\"integer\\\";i:1;i:1000000;}}}}}i:22;a:8:{s:9:\\\"namespace\\\";s:35:\\\"Symfony\\\\Component\\\\Messenger\\\\Command\\\";s:11:\\\"short_class\\\";s:22:\\\"ConsumeMessagesCommand\\\";s:5:\\\"class\\\";s:58:\\\"Symfony\\\\Component\\\\Messenger\\\\Command\\\\ConsumeMessagesCommand\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:7:\\\"execute\\\";s:4:\\\"file\\\";s:77:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php\\\";s:4:\\\"line\\\";i:298;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:41:\\\"Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:46:\\\"Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput\\\";}}}i:23;a:8:{s:9:\\\"namespace\\\";s:33:\\\"Symfony\\\\Component\\\\Console\\\\Command\\\";s:11:\\\"short_class\\\";s:7:\\\"Command\\\";s:5:\\\"class\\\";s:41:\\\"Symfony\\\\Component\\\\Console\\\\Command\\\\Command\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:3:\\\"run\\\";s:4:\\\"file\\\";s:73:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\console\\\\Application.php\\\";s:4:\\\"line\\\";i:1033;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:41:\\\"Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:46:\\\"Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput\\\";}}}i:24;a:8:{s:9:\\\"namespace\\\";s:25:\\\"Symfony\\\\Component\\\\Console\\\";s:11:\\\"short_class\\\";s:11:\\\"Application\\\";s:5:\\\"class\\\";s:37:\\\"Symfony\\\\Component\\\\Console\\\\Application\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:12:\\\"doRunCommand\\\";s:4:\\\"file\\\";s:90:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\framework-bundle\\\\Console\\\\Application.php\\\";s:4:\\\"line\\\";i:96;s:4:\\\"args\\\";a:3:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:58:\\\"Symfony\\\\Component\\\\Messenger\\\\Command\\\\ConsumeMessagesCommand\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:41:\\\"Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput\\\";}i:2;a:2:{i:0;s:6:\\\"object\\\";i:1;s:46:\\\"Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput\\\";}}}i:25;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Bundle\\\\FrameworkBundle\\\\Console\\\";s:11:\\\"short_class\\\";s:11:\\\"Application\\\";s:5:\\\"class\\\";s:50:\\\"Symfony\\\\Bundle\\\\FrameworkBundle\\\\Console\\\\Application\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:12:\\\"doRunCommand\\\";s:4:\\\"file\\\";s:73:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\console\\\\Application.php\\\";s:4:\\\"line\\\";i:299;s:4:\\\"args\\\";a:3:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:58:\\\"Symfony\\\\Component\\\\Messenger\\\\Command\\\\ConsumeMessagesCommand\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:41:\\\"Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput\\\";}i:2;a:2:{i:0;s:6:\\\"object\\\";i:1;s:46:\\\"Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput\\\";}}}i:26;a:8:{s:9:\\\"namespace\\\";s:25:\\\"Symfony\\\\Component\\\\Console\\\";s:11:\\\"short_class\\\";s:11:\\\"Application\\\";s:5:\\\"class\\\";s:37:\\\"Symfony\\\\Component\\\\Console\\\\Application\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:5:\\\"doRun\\\";s:4:\\\"file\\\";s:90:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\framework-bundle\\\\Console\\\\Application.php\\\";s:4:\\\"line\\\";i:82;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:41:\\\"Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:46:\\\"Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput\\\";}}}i:27;a:8:{s:9:\\\"namespace\\\";s:38:\\\"Symfony\\\\Bundle\\\\FrameworkBundle\\\\Console\\\";s:11:\\\"short_class\\\";s:11:\\\"Application\\\";s:5:\\\"class\\\";s:50:\\\"Symfony\\\\Bundle\\\\FrameworkBundle\\\\Console\\\\Application\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:5:\\\"doRun\\\";s:4:\\\"file\\\";s:73:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\console\\\\Application.php\\\";s:4:\\\"line\\\";i:171;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:41:\\\"Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:46:\\\"Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput\\\";}}}i:28;a:8:{s:9:\\\"namespace\\\";s:25:\\\"Symfony\\\\Component\\\\Console\\\";s:11:\\\"short_class\\\";s:11:\\\"Application\\\";s:5:\\\"class\\\";s:37:\\\"Symfony\\\\Component\\\\Console\\\\Application\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:3:\\\"run\\\";s:4:\\\"file\\\";s:101:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\runtime\\\\Runner\\\\Symfony\\\\ConsoleApplicationRunner.php\\\";s:4:\\\"line\\\";i:54;s:4:\\\"args\\\";a:2:{i:0;a:2:{i:0;s:6:\\\"object\\\";i:1;s:41:\\\"Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput\\\";}i:1;a:2:{i:0;s:6:\\\"object\\\";i:1;s:46:\\\"Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput\\\";}}}i:29;a:8:{s:9:\\\"namespace\\\";s:40:\\\"Symfony\\\\Component\\\\Runtime\\\\Runner\\\\Symfony\\\";s:11:\\\"short_class\\\";s:24:\\\"ConsoleApplicationRunner\\\";s:5:\\\"class\\\";s:65:\\\"Symfony\\\\Component\\\\Runtime\\\\Runner\\\\Symfony\\\\ConsoleApplicationRunner\\\";s:4:\\\"type\\\";s:2:\\\"->\\\";s:8:\\\"function\\\";s:3:\\\"run\\\";s:4:\\\"file\\\";s:62:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\autoload_runtime.php\\\";s:4:\\\"line\\\";i:35;s:4:\\\"args\\\";a:0:{}}i:30;a:8:{s:9:\\\"namespace\\\";s:0:\\\"\\\";s:11:\\\"short_class\\\";s:0:\\\"\\\";s:5:\\\"class\\\";s:0:\\\"\\\";s:4:\\\"type\\\";s:0:\\\"\\\";s:8:\\\"function\\\";s:12:\\\"require_once\\\";s:4:\\\"file\\\";s:46:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\bin\\\\console\\\";s:4:\\\"line\\\";i:11;s:4:\\\"args\\\";a:1:{i:0;a:2:{i:0;s:6:\\\"string\\\";i:1;s:62:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\autoload_runtime.php\\\";}}}}s:72:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0traceAsString\\\";s:6930:\\\"#0 [internal function]: Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream->Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\Stream\\\\{closure}(2, \\\'stream_socket_c...\\\', \\\'C:\\\\\\\\xampp\\\\\\\\htdocs...\\\', 157)\n#1 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream.php(157): stream_socket_client(\\\'localhost:1025\\\', 0, \\\'\\\', 60.0, 4, Resource id #799)\n#2 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\SmtpTransport.php(251): Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream->initialize()\n#3 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\SmtpTransport.php(194): Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\SmtpTransport->start()\n#4 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\AbstractTransport.php(71): Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\SmtpTransport->doSend(Object(Symfony\\\\Component\\\\Mailer\\\\SentMessage))\n#5 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\SmtpTransport.php(136): Symfony\\\\Component\\\\Mailer\\\\Transport\\\\AbstractTransport->send(Object(Symfony\\\\Component\\\\Mailer\\\\SentMessage), Object(Symfony\\\\Component\\\\Mailer\\\\DelayedEnvelope))\n#6 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Transports.php(51): Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Smtp\\\\SmtpTransport->send(Object(Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail), NULL)\n#7 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Messenger\\\\MessageHandler.php(31): Symfony\\\\Component\\\\Mailer\\\\Transport\\\\Transports->send(Object(Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail), NULL)\n#8 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\HandleMessageMiddleware.php(96): Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\MessageHandler->__invoke(Object(Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage))\n#9 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\SendMessageMiddleware.php(74): Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\HandleMessageMiddleware->handle(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Object(Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack))\n#10 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\FailedMessageProcessingMiddleware.php(34): Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\SendMessageMiddleware->handle(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Object(Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack))\n#11 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\DispatchAfterCurrentBusMiddleware.php(68): Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\FailedMessageProcessingMiddleware->handle(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Object(Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack))\n#12 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\RejectRedeliveredMessageMiddleware.php(48): Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\DispatchAfterCurrentBusMiddleware->handle(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Object(Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack))\n#13 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\AddBusNameStampMiddleware.php(37): Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\RejectRedeliveredMessageMiddleware->handle(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Object(Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack))\n#14 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Middleware\\\\TraceableMiddleware.php(43): Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\AddBusNameStampMiddleware->handle(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Object(Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack))\n#15 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\MessageBus.php(77): Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableMiddleware->handle(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Object(Symfony\\\\Component\\\\Messenger\\\\Middleware\\\\TraceableStack))\n#16 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\TraceableMessageBus.php(41): Symfony\\\\Component\\\\Messenger\\\\MessageBus->dispatch(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Array)\n#17 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\RoutableMessageBus.php(54): Symfony\\\\Component\\\\Messenger\\\\TraceableMessageBus->dispatch(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), Array)\n#18 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Worker.php(160): Symfony\\\\Component\\\\Messenger\\\\RoutableMessageBus->dispatch(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope))\n#19 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Worker.php(108): Symfony\\\\Component\\\\Messenger\\\\Worker->handleMessage(Object(Symfony\\\\Component\\\\Messenger\\\\Envelope), \\\'async\\\')\n#20 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\messenger\\\\Command\\\\ConsumeMessagesCommand.php(225): Symfony\\\\Component\\\\Messenger\\\\Worker->run(Array)\n#21 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php(298): Symfony\\\\Component\\\\Messenger\\\\Command\\\\ConsumeMessagesCommand->execute(Object(Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput), Object(Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput))\n#22 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\console\\\\Application.php(1033): Symfony\\\\Component\\\\Console\\\\Command\\\\Command->run(Object(Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput), Object(Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput))\n#23 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\framework-bundle\\\\Console\\\\Application.php(96): Symfony\\\\Component\\\\Console\\\\Application->doRunCommand(Object(Symfony\\\\Component\\\\Messenger\\\\Command\\\\ConsumeMessagesCommand), Object(Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput), Object(Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput))\n#24 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\console\\\\Application.php(299): Symfony\\\\Bundle\\\\FrameworkBundle\\\\Console\\\\Application->doRunCommand(Object(Symfony\\\\Component\\\\Messenger\\\\Command\\\\ConsumeMessagesCommand), Object(Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput), Object(Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput))\n#25 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\framework-bundle\\\\Console\\\\Application.php(82): Symfony\\\\Component\\\\Console\\\\Application->doRun(Object(Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput), Object(Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput))\n#26 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\console\\\\Application.php(171): Symfony\\\\Bundle\\\\FrameworkBundle\\\\Console\\\\Application->doRun(Object(Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput), Object(Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput))\n#27 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\runtime\\\\Runner\\\\Symfony\\\\ConsoleApplicationRunner.php(54): Symfony\\\\Component\\\\Console\\\\Application->run(Object(Symfony\\\\Component\\\\Console\\\\Input\\\\ArgvInput), Object(Symfony\\\\Component\\\\Console\\\\Output\\\\ConsoleOutput))\n#28 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\autoload_runtime.php(35): Symfony\\\\Component\\\\Runtime\\\\Runner\\\\Symfony\\\\ConsoleApplicationRunner->run()\n#29 C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\bin\\\\console(11): require_once(\\\'C:\\\\\\\\xampp\\\\\\\\htdocs...\\\')\n#30 {main}\\\";s:64:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0class\\\";s:53:\\\"Symfony\\\\Component\\\\Mailer\\\\Exception\\\\TransportException\\\";s:69:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0statusCode\\\";i:500;s:69:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0statusText\\\";s:21:\\\"Internal Server Error\\\";s:66:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0headers\\\";a:0:{}s:63:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0file\\\";s:95:\\\"C:\\\\xampp\\\\htdocs\\\\filrougeSymfony5.4\\\\vendor\\\\symfony\\\\mailer\\\\Transport\\\\Smtp\\\\Stream\\\\SocketStream.php\\\";s:63:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0line\\\";i:154;s:67:\\\"\\0Symfony\\\\Component\\\\ErrorHandler\\\\Exception\\\\FlattenException\\0asString\\\";N;}}}s:44:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\\";a:4:{i:0;O:44:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\\":1:{s:51:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\0delay\\\";i:1000;}i:1;O:44:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\\":1:{s:51:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\0delay\\\";i:2000;}i:2;O:44:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\\":1:{s:51:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\0delay\\\";i:4000;}i:3;O:44:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\\":1:{s:51:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\DelayStamp\\0delay\\\";i:0;}}s:49:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\\";a:4:{i:0;O:49:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\\":4:{s:61:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0retryCount\\\";i:1;s:64:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0redeliveredAt\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-03 22:49:17.744520\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:13:\\\"Europe/Berlin\\\";}s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0exceptionMessage\\\";N;s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0flattenException\\\";N;}i:1;O:49:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\\":4:{s:61:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0retryCount\\\";i:2;s:64:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0redeliveredAt\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-03 22:49:22.981378\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:13:\\\"Europe/Berlin\\\";}s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0exceptionMessage\\\";N;s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0flattenException\\\";N;}i:2;O:49:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\\":4:{s:61:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0retryCount\\\";i:3;s:64:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0redeliveredAt\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-03 22:49:28.129104\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:13:\\\"Europe/Berlin\\\";}s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0exceptionMessage\\\";N;s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0flattenException\\\";N;}i:3;O:49:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\\":4:{s:61:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0retryCount\\\";i:0;s:64:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0redeliveredAt\\\";O:17:\\\"DateTimeImmutable\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-03 22:49:36.324378\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:13:\\\"Europe/Berlin\\\";}s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0exceptionMessage\\\";N;s:67:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\RedeliveryStamp\\0flattenException\\\";N;}}s:61:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\SentToFailureTransportStamp\\\";a:1:{i:0;O:61:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\SentToFailureTransportStamp\\\":1:{s:83:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\SentToFailureTransportStamp\\0originalReceiverName\\\";s:5:\\\"async\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:51:\\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\\":2:{s:60:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\\";O:39:\\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\\":4:{i:0;s:41:\\\"registration/confirmation_email.html.twig\\\";i:1;N;i:2;a:3:{s:9:\\\"signedUrl\\\";s:165:\\\"http://localhost:8000/verify/email?expires=1651614445&signature=xmwPwuJ8q1J7MrHPItwaR7xkckRs3Nncw%2BOU4y76F4Q%3D&token=LL24Nnk7C6wXyQSeZA2uZkaSORcVx0EqAfVoYD5W6qM%3D\\\";s:19:\\\"expiresAtMessageKey\\\";s:26:\\\"%count% hour|%count% hours\\\";s:20:\\\"expiresAtMessageData\\\";a:1:{s:7:\\\"%count%\\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\\":2:{s:46:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\\";a:3:{s:4:\\\"from\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:4:\\\"From\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:22:\\\"no-reply@mascindye.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:3:\\\"moi\\\";}}}}s:2:\\\"to\\\";a:1:{i:0;O:47:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:2:\\\"To\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:58:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\\";a:1:{i:0;O:30:\\\"Symfony\\\\Component\\\\Mime\\\\Address\\\":2:{s:39:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\\";s:14:\\\"tymi@yahoo.com\\\";s:36:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\\";s:0:\\\"\\\";}}}}s:7:\\\"subject\\\";a:1:{i:0;O:48:\\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\\":5:{s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\\";s:7:\\\"Subject\\\";s:56:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\\";i:76;s:50:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\\";N;s:53:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\\";s:5:\\\"utf-8\\\";s:55:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\\";s:25:\\\"Please Confirm your Email\\\";}}}s:49:\\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\\";i:76;}i:1;N;}}}s:61:\\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\\";N;}}', '[]', 'failed', '2022-05-03 22:49:36', '2022-05-03 22:49:36', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `fournisseur_id` int(11) NOT NULL,
  `nom_produit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taille` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `prix_unitaire_ht` int(11) NOT NULL,
  `url_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commente_id` int(11) DEFAULT NULL,
  `concerner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `commente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `commente_id`) VALUES
(1, 'tymi@yahoo.com', '[]', '$2y$13$KTyoeZVW1qe4gN92wWrU3OjP7bpxQeNkgwkQ5.UyN0D6q6mX8rA7i', 0, NULL),
(2, 'lili@yahoo.com', '[]', '$2y$13$AAOCwSOMOPb46EDwkag7uOwsDsujEfPE/VT2CfcWUDhi6wOWQj9CS', 1, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_497DD634727ACA70` (`parent_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DA76ED395` (`user_id`),
  ADD KEY `IDX_6EEAA67D95131E34` (`concerner_id`);

--
-- Index pour la table `commente`
--
ALTER TABLE `commente`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `concerner`
--
ALTER TABLE `concerner`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29A5EC27BCF5E72D` (`categorie_id`),
  ADD KEY `IDX_29A5EC27670C757F` (`fournisseur_id`),
  ADD KEY `IDX_29A5EC2716459DC5` (`commente_id`),
  ADD KEY `IDX_29A5EC2795131E34` (`concerner_id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D64916459DC5` (`commente_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commente`
--
ALTER TABLE `commente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `concerner`
--
ALTER TABLE `concerner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `FK_497DD634727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67D95131E34` FOREIGN KEY (`concerner_id`) REFERENCES `concerner` (`id`),
  ADD CONSTRAINT `FK_6EEAA67DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC2716459DC5` FOREIGN KEY (`commente_id`) REFERENCES `commente` (`id`),
  ADD CONSTRAINT `FK_29A5EC27670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseur` (`id`),
  ADD CONSTRAINT `FK_29A5EC2795131E34` FOREIGN KEY (`concerner_id`) REFERENCES `concerner` (`id`),
  ADD CONSTRAINT `FK_29A5EC27BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D64916459DC5` FOREIGN KEY (`commente_id`) REFERENCES `commente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

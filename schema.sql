-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.31-MariaDB-0+deb10u1-log - Debian 10
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for moutzouris
DROP DATABASE IF EXISTS `moutzouris`;
CREATE DATABASE IF NOT EXISTS `moutzouris` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `moutzouris`;

-- Dumping structure for table moutzouris.cards
DROP TABLE IF EXISTS `cards`;
CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cshape` varchar(255) NOT NULL,
  `curl` varchar(2550) NOT NULL,
  `player` enum('player1','player2') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cards_cname_cshape_uindex` (`cname`,`cshape`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for procedure moutzouris.clean_cards
DROP PROCEDURE IF EXISTS `clean_cards`;
DELIMITER //
CREATE PROCEDURE `clean_cards`()
BEGIN
        UPDATE cards set player = NULL;
end//
DELIMITER ;

-- Dumping structure for table moutzouris.game_status
DROP TABLE IF EXISTS `game_status`;
CREATE TABLE IF NOT EXISTS `game_status` (
  `status` enum('not acitve','initialized','started','ended','aborded') NOT NULL COMMENT 'not active',
  `last_change` timestamp NULL DEFAULT NULL,
  `p_turn` enum('player1','player2') DEFAULT NULL,
  `result` enum('player1','player2','d') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table moutzouris.players
DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `username` varchar(20) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

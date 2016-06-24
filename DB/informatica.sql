--
-- database: `informatica`
--

DROP DATABASE IF EXISTS `informatica`;
CREATE DATABASE `informatica` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_cs;
USE `informatica`;


--
-- structure for table `prodotti`
--

DROP TABLE IF EXISTS `prodotti`;
CREATE TABLE `prodotti` (
  `pid` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `prezzo` int unsigned NOT NULL,
  `qty` smallint unsigned NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ;


--
-- data for table `prodotti`
--

INSERT INTO `prodotti` (`pid`, `nome`, `prezzo`, `qty`) VALUES
(1, 'display 21.5" 1920x1080 HDMI', 8856, 3),
(2, 'mouse USB', 283, 20),
(3, 'HDD USB3 1TB', 4800, 5),
(4, 'HDD USB3 2TB', 6610, 5),
(5, 'USB pen 2GB', 390, 10),
(6, 'USB pen 4GB', 406, 20);


--
-- structure for table 'utenti'
--

DROP TABLE IF EXISTS `utenti`;
CREATE TABLE `utenti` (
  `userid` int unsigned NOT NULL AUTO_INCREMENT,
  `nick` varchar(8) NOT NULL,
  `pass` varchar(10) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB;


--
-- data for table 'utenti'
--

INSERT INTO `utenti` (`userid`, `nick`, `pass`) VALUES
(1, 'alex1990', '2016'),
(2, '$007', '1960');


--
-- Permessi DB user: uNormal; pwd: posso_solo_leggere (solo SELECT)
--

GRANT USAGE ON `informatica`.* TO 'uNormal'@'localhost' IDENTIFIED BY PASSWORD '*0FBF5C395B1E6B971E9CBB18F95041B49D0B0947';
GRANT SELECT ON `informatica`.* TO 'uNormal'@'localhost';


--
-- Permessi DB user: uPower; pwd: SuperPippo!!! (solo SELECT, INSERT, UPDATE)
--

GRANT USAGE ON `informatica`.* TO 'uPower'@'localhost' IDENTIFIED BY PASSWORD '*400BF58DFE90766AF20296B3D89A670FC66BEAEC';
GRANT SELECT, INSERT, UPDATE ON `informatica`.* TO 'uPower'@'localhost';

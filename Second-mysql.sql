ALTER TABLE `Books` ADD Genre text;

CREATE TABLE AB
(
    `authorId` int NOT NULL,
    `bookId` int NOT NULL);

INSERT INTO `AB` (`authorId`,`bookId`) VALUES
(1, 1),
(2, 2),
(4, 3),
(15,3);

SELECT * FROM `Books` LEFT JOIN `AB` ON `Books`.`bookId` = `AB`.`bookId` LEFT JOIN `Authors` ON `AB`. `authorId` = `Authors`.`authorId` ;

CREATE TABLE IF NOT EXISTS `Genres` (
  `genreId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  PRIMARY KEY (`genreId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;

ALTER TABLE `Books` DROP COLUMN Genre;
ALTER TABLE `Books` DROP COLUMN `authorId`;
ALTER TABLE `Books` ADD `genreId` int;

UPDATE `Books`
    SET `genreId` = 1
    WHERE `bookId` = 1 OR `bookId` = 2;

ALTER TABLE `Books` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `Books` (`bookId`, `title`, `year`, `genreId`) VALUES
(NULL,'Žirgai ir bėriai ristūnai', 2012, 2);

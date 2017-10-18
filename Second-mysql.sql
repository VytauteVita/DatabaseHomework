ALTER TABLE `Books` ADD Genre text;

CREATE TABLE AB
(
    `authorId` int NOT NULL,
    `bookId` int NOT NULL);

INSERT INTO `AB` (`authorId`,`bookId`) VALUES
(1, 1),
(2, 2),
(4, 3);

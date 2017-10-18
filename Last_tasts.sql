SELECT DISTINCT userId FROM `UserClicks` WHERE `dateTime` >= "2017-01-01";

SELECT *, floor(datediff(curdate(),birthDate) / 365) 
FROM Clients
WHERE 
         DATE_FORMAT(birthDate,'%m-%d') = DATE_FORMAT(NOW(),'%m-%d');

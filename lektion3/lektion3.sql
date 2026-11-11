CREATE DATABASE dbLecture3;
-- DROP DATABASE dbLektion3;
USE dbLecture3;

SELECT @@datadir;

CREATE TABLE tblTest
(
    fldFirstName VARCHAR(30),
    fldLastName  VARCHAR(30),
    fldAge       INT,
    PRIMARY KEY (fldFirstName, fldLastName)
);

INSERT INTO tblTest
VALUES ('Nisse', 'Nilsson', 34),
       ('Lena', 'Lamm', 7);

SELECT *
FROM tblTest;

USE dbDogs;

SELECT *
FROM tblDog;

SELECT fldName
FROM tblDog
WHERE fldSize = 'Stor';

SELECT fldName, fldSize
FROM tblDog
WHERE fldSize <> 'Stor';

INSERT INTO tblDog (fldName, fldCount, fldSize)
VALUES ('Långhårig Collie', 4538, 'Mellan'),
       ('Malinois', 2329, 'Mellan');

INSERT INTO tblDog (fldName, fldSize)
VALUES ('Västgötaspets', 'Liten');

SELECT *
FROM tblDog
WHERE fldName = 'Västgötaspets';


SELECT *
FROM tblDog
WHERE fldName = 'Långhårig Collie';

SELECT DISTINCT fldSize
FROM tblDog;


SELECT *
FROM tblDog
WHERE NOT fldSize = 'Mellan'
  AND (fldCount > 100000 OR fldCount < 20100);

SELECT fldName
FROM tblDog
WHERE fldSize = 'Mellan'
ORDER BY fldName DESC
LIMIT 3;

SELECT MIN(fldCount)
FROM tblDog
WHERE fldSize = 'Stor';
SELECT AVG(fldCount)
FROM tblDog
WHERE fldSize = 'Stor';

CREATE TABLE tblTest
(
    fldId    INT AUTO_INCREMENT PRIMARY KEY,
    fldName  CHAR(1),
    fldValue INT
);

INSERT INTO tblTest (fldName, fldValue)
VALUES ('A', 12),
       ('B', NULL),
       ('C', NULL);

SELECT COUNT(fldValue)
FROM tblTest;

SELECT *
FROM tblDog
WHERE fldName LIKE '% ___';

SELECT *
FROM tblTest
WHERE fldValue IS NULL;

SELECT fldName, ROUND(fldCount / 1000)
FROM tblDog;
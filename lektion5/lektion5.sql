CREATE DATABASE dbLecture5;

USE dbLecture5;

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    manager INT,
    FOREIGN KEY (manager) REFERENCES employee(id)
);

CREATE TABLE measurements (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    data DOUBLE
);


CREATE TABLE tblAudit (
    fldTraceId CHAR(32) PRIMARY KEY,
    fldTimestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    fldLogText VARCHAR(200)
);

SELECT * FROM tblAudit;

INSERT INTO tblAudit (fldTraceId, fldLogText)
VALUES ('123e4567e89b12d3a456426614174000', 'My litte error');

INSERT INTO tblAudit
VALUES ('123e4567e89b12d3a456426614174001', NULL, 'Apan bepan');

INSERT INTO tblAudit
VALUES ('123e4567e89b12d3a456426614174002', DEFAULT, 'Apan bepan');

Select * from tblAudit;


USE dbDogs;

SELECT * FROM tblDog;

UPDATE tblDog SET fldCount = 2378 WHERE fldId = 33;
UPDATE tblDog SET fldCount = fldCount + 1 WHERE fldSize = 'Liten';

SELECT * FROM tblDog WHERE fldSize = 'Liten';

SELECT DISTINCT tblDog.fldSize FROM tblDog;

SELECT * FROM tblDog WHERE fldSize IN ('Mellan', 'Liten') AND fldName LIKE '%spets';
SELECT * FROM tblDog WHERE fldCount BETWEEN 1000 AND 30000 ORDER BY fldCount ASC;

SELECT fldName FROM tblDog WHERE fldSize = 'Liten' ORDER BY fldCount DESC LIMIT 3;

SELECT fldId, fldName, fldCount, fldSize, IF(fldSize = 'Stor', fldCount*2, fldCount) AS RealCount FROM tblDog WHERE fldName LIKE '%x%';

SELECT * FROM tblDog WHERE fldName LIKE '%!%%' ESCAPE '!';

INSERT INTO tblDog VALUES (DEFAULT, 'Procenthund', 1234, 'Mellan');
UPDATE tblDog SET fldName = "Procent%hund" WHERE fldName = 'Procenthund';
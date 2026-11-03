show databases;

CREATE DATABASE IF NOT EXISTS dbLecture2;
-- DROP DATABASE dbLektion2;

USE dbLecture2;

CREATE TABLE tblCustomer
(
    fldCustomerNo INT PRIMARY KEY,
    fldFirstName VARCHAR(30),
    fldLastName VARCHAR(30),
    fldPhoneNumber VARCHAR(15)
);

-- DROP TABLE tblCustomer;

INSERT INTO tblCustomer VALUES
    (1, 'Nisse', 'Hult', '0765-432111');

INSERT INTO tblCustomer VALUES
    (2, 'Lena', 'Lamm', '12345'),
    (3, 'Leyla', 'Olsson', '4321');

SELECT * FROM tblCustomer;

-- With auto_increment
CREATE TABLE tblCustomer2
(
    fldCustomerNo INT AUTO_INCREMENT PRIMARY KEY,
    fldFirstName VARCHAR(30),
    fldLastName VARCHAR(30),
    fldPhoneNumber VARCHAR(15)
);

-- note that this can be run any number of times since
-- new rows will be inserted with new auto-incremented keys
INSERT INTO tblCustomer2 VALUES
    (DEFAULT, 'Nisse', 'Hult', '0765-432111'),
    (DEFAULT, 'Lena', 'Lamm', '12345'),
    (DEFAULT, 'Leyla', 'Olsson', '4321');

SELECT * FROM tblCustomer2;
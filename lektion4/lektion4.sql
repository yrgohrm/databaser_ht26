CREATE TABLE tblPassport (
    fldPassNo INT AUTO_INCREMENT PRIMARY KEY,
    fldIssued DATE,
    fldCountry VARCHAR(100)
);

CREATE TABLE tblPerson (
    fldPersNo CHAR(12) PRIMARY KEY,
    fldPassNo INT UNIQUE,
    FOREIGN KEY (fldPassNo) REFERENCES tblPassport(fldPassNo)
);

INSERT INTO tblPassport VALUES (0, CURRENT_TIME(), 'Sverige');

INSERT INTO tblPerson VALUES ('197110104712', 1);
INSERT INTO tblPerson VALUES ('194110104709', 2);
INSERT INTO tblPerson VALUES ('194110104709', NULL);
INSERT INTO tblPerson VALUES ('195110104710', 1);

CREATE TABLE tblAuthor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    passport INT UNIQUE,
    FOREIGN KEY (passport) REFERENCES tblPassport(fldPassNo)
);

CREATE TABLE tblBook (
    isbn CHAR(13) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE tblAuthorBookBridge (
    author INT,
    isbn CHAR(13),
    PRIMARY KEY (author, isbn),
    FOREIGN KEY (author) REFERENCES tblAuthor(id),
    FOREIGN KEY (isbn) REFERENCES tblBook(isbn)
);

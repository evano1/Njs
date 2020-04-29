
CREATE DATABASE IF NOT EXISTS local;

USE local;

CREATE TABLE band 
(bid int(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(150) NOT NULL,
year_formed YEAR NOT NULL,
PRIMARY KEY (bid)
);


INSERT INTO band (name, year_formed)
VALUES ("Nirvana", 1987),
("Oasis", 1991),
("Band C", 1992),
("Band D", 1993),
("Band E", 1994);

//Album table://
CREATE TABLE album
(
albumid INT NOT NULL,
bid INT NOT NULL,
published_year YEAR,
title VARCHAR(50),
price INT NOT NULL,
publisher VARCHAR(50),
format VARCHAR(20),
PRIMARY KEY (albumid),
FOREIGN KEY(bid) REFERENCES band(bid)
);


//Data in album://
INSERT INTO album (albumid, published_year, title, price, publisher, format, bid)
VALUES (111, 1990, "Album 1", 11, "New Publishers", "Vinyl", 001),
(112, 1991, "Album 2", 6, "Publishing Inc.", "Vinyl", 002),
(113, 1992, "Album 3", 9, "New Publishers", "Vinyl", 001),
(114, 1992, "Album 4", 10, "Publishing House", "CD", 003),
(115, 1993, "Album 5", 11, "New Publishers", "CD", 001),
(116, 1993, "Album 6", 12, "New Publishers", "CD", 004),
(117, 1994, "Album 7", 8, "Publishing House", "CD", 005),
(118, 1995, "Album 8", 10, "Publishing Inc.", "Vinyl", 002),
(119, 1997, "Album 9", 10, "Publishing Inc.", "CD", 002),
(120, 2000, "Album 10", 9, "Publishing Inc.", "CD", 002),
(121, 2003, "Album 11", 13, "New Publishers", "CD", 001);



//STATEMENt//

Select a.title
from band as b,album as a
WHERE b.bid=a.bid and b.bid=001;















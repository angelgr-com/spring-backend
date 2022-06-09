-- ----------------------------------------
-- CREATE SCHEMA
-- ----------------------------------------
CREATE SCHEMA IF NOT EXISTS `BOOKING_RESTAURANT` DEFAULT CHARACTER SET utf8;
USE `BOOKING_RESTAURANT`;

-- ----------------------------------------
-- CREATE TABLES
-- ----------------------------------------
CREATE TABLE IF NOT EXISTS `BOOKING_RESTAURANT`.`RESTAURANT` (
	`ID` INT(19) NOT NULL AUTO_INCREMENT,
	`NAME` VARCHAR(45) NOT NULL,
	`DESCRIPTION` VARCHAR(100) NOT NULL,
	`ADDRESS` VARCHAR(100) NOT NULL,
	`IMAGE` VARCHAR(500) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE IF NOT EXISTS `BOOKING_RESTAURANT`.`RESERVATION` (
	`ID` INT(19) NOT NULL,
	`LOCATOR` VARCHAR(45) NOT NULL,
	`PERSON` INT(19) NOT NULL,
	`DATE` DATE NOT NULL,
	`TURN` VARCHAR(45) NOT NULL,
	`RESTAURANT_ID` INT(19) NOT NULL,
	PRIMARY KEY (`ID`),
	FOREIGN KEY (`RESTAURANT_ID`)
		REFERENCES `BOOKING_RESTAURANT`.`RESTAURANT`(`ID`)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS `BOOKING_RESTAURANT`.`TURN` (
	`ID` INT(19) NOT NULL,
	`NAME` VARCHAR(45) NOT NULL,
	`RESTAURANT_ID` INT(19) NOT NULL,
	PRIMARY KEY (`ID`),
	FOREIGN KEY (`RESTAURANT_ID`)
		REFERENCES `BOOKING_RESTAURANT`.`RESTAURANT`(`ID`)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);


CREATE TABLE IF NOT EXISTS `BOOKING_RESTAURANT`.`BOARD` (
	`ID` INT(19) NOT NULL,
	`CAPACITY` INT(19) NOT NULL,
	`NUMBER` INT(19),
	`RESTAURANT_ID` INT(19) NOT NULL,
	PRIMARY KEY (`ID`),
	FOREIGN KEY (`RESTAURANT_ID`)
		REFERENCES `BOOKING_RESTAURANT`.`RESTAURANT`(`ID`)
		ON UPDATE CASCADE
		ON DELETE RESTRICT
);

-- ----------------------------------------
-- INSERT INTO RESTAURANT
-- ----------------------------------------
INSERT INTO BOOKING_RESTAURANT . RESTAURANT (ID,NAME,DESCRIPTION,ADDRESS,IMAGE) VALUES
	 (1,'Burger Hull','All kinds of burguers','6765 Elmwood Ave., Cranston, RI 02910','https://www.publicdomainpictures.net/pictures/110000/velka/salmon-sliders.jpg'),
	 (2,'AFC','Best chicken food','111 Foothill Road, Oxford, MD 21654','https://www.publicdomainpictures.net/pictures/50000/velka/greek-restaurant.jpg'),
	 (3,'Olimpus','Mediterranean cuisine','2311 North Los Robles Avenue; Pasadena, CA; USA','https://www.publicdomainpictures.net/pictures/60000/velka/sea-restaurant.jpg');

-- ----------------------------------------
-- INSERT INTO TURN
-- ----------------------------------------
INSERT INTO BOOKING_RESTAURANT . TURN (ID,NAME,RESTAURANT_ID) VALUES
	(1, '10:00', 1),
	(2, '11:00', 1),
	(3, '12:00', 1),
	(4, '13:00', 1),
	
	(5, '10:00', 2),
	(6, '11:00', 2),
	(7, '12:00', 2),
	(8, '13:00', 2);

-- ----------------------------------------
-- INSERT INTO BOARD
-- ----------------------------------------
INSERT INTO BOOKING_RESTAURANT . BOARD (ID,CAPACITY,NUMBER,RESTAURANT_ID) VALUES
	(1, 3, 1, 1),
	(2, 6, 2, 1),
	(3, 2, 3, 1),
	(4, 5, 4, 1),
	
	(5, 4, 1, 2),
	(6, 6, 2, 2),
	(7, 4, 3, 2),
	(8, 8, 4, 2);
	
-- ----------------------------------------
-- INSERT INTO RESERVATION
-- ----------------------------------------
INSERT INTO BOOKING_RESTAURANT . RESERVATION (ID,LOCATOR,PERSON,DATE,TURN,RESTAURANT_ID) VALUES
	(1, 'Burger Hull', 6, '2022-12-31', '10:00', 1),
	(2, 'Burger Hull', 3, '2022-12-31', '11:00', 1),
	(3, 'Burger Hull', 5, '2022-12-31', '12:00', 1),
	(4, 'Burger Hull', 2, '2022-12-31', '13:00', 1),

	(5, 'AFC', 8, '2022-12-31', '10:00', 1),
	(6, 'AFC', 6, '2022-12-31', '11:00', 1),
	(7, 'AFC', 4, '2022-12-31', '12:00', 1),
	(8, 'AFC', 4, '2022-12-31', '13:00', 1);
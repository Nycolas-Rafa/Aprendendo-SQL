CREATE DATABASE PREFERENCIAS;

USE PREFERENCIAS;

CREATE TABLE USERS(
id INTEGER (11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR (100) NOT NULL,
age INTEGER (3) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE
)ENGINE=MyIsam AUTO_INCREMENT=0 DEFAULT CHARSET=LATIN1;

CREATE TABLE DRINKS(
idDrinks INTEGER (11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
drink VARCHAR (100) NOT NULL,
priceDrinks INTEGER (11)
)ENGINE=MyIsam AUTO_INCREMENT=0 DEFAULT CHARSET=LATIN1;

CREATE TABLE FOODS(
idFoods INTEGER (11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
eat VARCHAR (100) NOT NULL,
priceFoods  INTEGER (11)
)ENGINE=MyIsam AUTO_INCREMENT=0 DEFAULT CHARSET=LATIN1;

CREATE TABLE SHOPPING(
idShopping INTEGER (11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
idFoods INTEGER (11),
idDrinks INTEGER (11),
id INTEGER (11),
FOREIGN KEY ( idDrinks ) REFERENCES DRINKS( idDrinks ) ,
FOREIGN KEY ( idFoods) REFERENCES FOODS( idFoods ) ,
FOREIGN KEY ( id ) REFERENCES USERS( id ) 
)ENGINE=MyIsam AUTO_INCREMENT=0 DEFAULT CHARSET=LATIN1;

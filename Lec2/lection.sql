/* Lection 2 : Creation and Inserting */ 
/* use bank */
use bank;
/* use for dropping old table */
-- DROP TABLE favorite_food;
-- DROP TABLE person;

/* Time check */
SELECT NOW();

/* Absolute time check */
SELECT NOW() FROM dual;

/* Character set */
SHOW CHARACTER SET;

/* Simple table creation */
CREATE TABLE IF NOT EXISTS person (
    person_id SMALLINT UNSIGNED AUTO_INCREMENT,
    fname VARCHAR(20),
    lname VARCHAR(20),
    gender ENUM('M', 'F'),
    birth_day DATE, 
    address VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(20),
    postal_code VARCHAR(20),
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

/* Describe person table */ 
DESC person;

/* Favorite food table creation */ 
CREATE TABLE IF NOT EXISTS favorite_food (
    person_id SMALLINT UNSIGNED AUTO_INCREMENT,
    food VARCHAR(20),
    CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
    CONSTRAINT fk_person_id FOREIGN KEY (person_id) REFERENCES person (person_id)
);

/* Show all current tables */
SHOW TABLES;

/* Modify person.person_id to AUTO_INCREMENT field  DON'T WORK*/
-- ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;

/* Describe person now */ 
DESC person;



/* Add new person */
INSERT INTO person (person_id, fname, lname, gender, birth_day) 
VALUES (null, 'William', 'Turner', 'M', '1972-05-27');

/* Check if new person exists */
SELECT * FROM person WHERE person_id = 1;

/* Check by lname */
SELECT * FROM person WHERE lname = 'Turner';

/* Add fav_food for Person id = 1*/
-- INSERT INTO favorite_food (person_id, food)
-- VALUES (1 , 'Pizza');

-- INSERT INTO favorite_food (person_id, food)
-- VALUES (1 , 'Cola');

-- INSERT INTO favorite_food (person_id, food)
-- VALUES (1 , 'Cookies');

/* check that food exists */ 
SELECT food FROM favorite_food WHERE person_id = 1 ORDER BY food;

/* add new person */ 
INSERT INTO person (person_id , fname, lname, gender, birth_day, address, city, state, country, postal_code)
VALUES (null, 'Susan', 'Smith', 'F', '1975-11-02', '23 Mapple St.', 'Arlington', 'VA', 'USA', '20220');

/*Check if person exists */
SELECT * FROM person WHERE fname = 'Susan';

/* update full info about William Turner */ 
UPDATE person SET address = '1225 Tremont St.', city = 'Boston', state = 'MA', 
country = 'USA', postal_code = '02138' 
WHERE fname = 'William' AND person_id = 1;

/* Check updated info */
SELECT * FROM person ;

/* deleted empty rows */ 
DELETE FROM person WHERE city IS NULL AND person_id = 2;

/* Check result */
SELECT * FROM person;



/* Deleting testing bases `person` and `favorite_food` */ 
DROP TABLE favorite_food;
DROP TABLE person; 

/* Check that database is mut */ 
SHOW TABLES;





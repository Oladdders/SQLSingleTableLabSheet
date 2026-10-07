
-- Single Table Lab Sheet

/*
Useful Notes:
VARCHAR = string of varying length up to 20 characters
CHAR = Fixed character
SMALLINT = whole numbers UNSIGNED = no negative numbers
*/

-- Query was throwing an error as it would try to recreate the table with every execute
DROP TABLE IF EXISTS pet;

-- Create schema/columns
CREATE TABLE pet (
    name VARCHAR(20),
    owner VARCHAR(20), 
    species VARCHAR(20), 
    sex CHAR(1),
    checkups SMALLINT UNSIGNED,
    birth DATE,
    death DATE
);

-- Insert rows
INSERT INTO pet (name, owner, species, sex, checkups, birth, death) VALUES
('Fluffy', 'Harold', 'cat', 'f', 5, '2001-02-04', NULL),
('Claws', 'Gwen', 'cat', 'm', 2, '2000-03-17', NULL),
('Buffy', 'Harold', 'dog', 'f', 7, '1999-05-13', NULL),
('Fang', 'Benny', 'dog', 'm', 4, '2000-08-27', NULL),
('Bowser', 'Diane', 'dog', 'm', 8, '1998-08-31', '2001-07-29'),
('Chirpy', 'Gwen', 'bird', 'f', 0, '2002-09-11', NULL),
('Whistler', 'Gwen', 'bird', '', 1, '2001-12-09', NULL),
('Slim', 'Benny', 'snake', 'm', 5, '2001-04-29', NULL);

-- View all records
SELECT * FROM pet;

-- Return where sex = m
SELECT * FROM pet where sex = 'm';

-- Owners of male pets
SELECT owner FROM pet where sex = 'm';

-- Remove Benny duplicate
SELECT DISTINCT owner FROM pet where sex = 'm';

-- Filter columns and rows returned
SELECT name, species, sex FROM pet WHERE species = 'snake' OR species = 'bird';

-- Q1-1. The names of owners and their pet's name for all pets who are female
SELECT owner, name FROM pet where sex = 'f';

-- Q1-2. The names and birth dates of pets which are dogs
SELECT name, birth FROM pet where species = 'dog';

-- Q1-3. The names of the owners of birds.
SELECT owner FROM pet where species = 'bird';

-- Q1-4. The species of pets who are female.
SELECT species FROM pet where sex = 'female';

-- Q1-5. The names and birth dates of pets which are cats or birds.
SELECT name, birth FROM pet where species = 'cat' OR species = 'bird';

-- Q1-6. The names and species of pets which are cats or birds and which are female.
SELECT name, species FROM pet where species = 'cat' OR species = 'bird' AND sex = 'f'; 
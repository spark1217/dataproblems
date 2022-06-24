/* 
Suppose you're given the below tables, containing animal weights, as well as a directory of zoos:
Table name: animal_weights
Table name: zoo_directory
Given the above, write a SQL query to return the second heaviest animal in the table from each zoo. 
In addition to the zoo_ID, return the zoo_name from the zoo_directory table.
Click here to view these tables in an interactive SQL fiddle.
(https://www.db-fiddle.com/f/iD8mRBCcFrw3J8XtCNGgv3/1)
*/

/* Create tables(given tables) */
CREATE TABLE animal_weights (
  `animal_ID` INTEGER,
  `weight_lbs` INTEGER,
  `zoo_ID` INTEGER
);

INSERT INTO animal_weights
  (`animal_ID`, `weight_lbs`, `zoo_ID`)
VALUES
  ('09992', '1040', '012'),
  ('099929', '1090', '012'),
  ('012993', '2190', '011'),
  ('009821', '750', '011'),
  ('096673', '580', '011'),
  ('01411', '690', '012'),
  ('01415', '695', '009'),
  ('01410', '690', '009'),
  ('01117', '1000', '009');
  
  

CREATE TABLE zoo_directory (
  `zoo_ID` INTEGER,
  `zoo_name` VARCHAR(11)
);


INSERT INTO zoo_directory
  (`zoo_ID`, `zoo_name`)
VALUES
  ('012', 'Detroit Zoo'),
  ('011', 'LA Zoo'),
  ('009', 'NY Zoo');
  

/* Query */
SELECT a.*, b.zoo_name AS zoo_name FROM animal_weights AS a 
JOIN zoo_directory AS b
ON a.zoo_ID = b.zoo_ID
ORDER BY weight_lbs DESC
LIMIT 1 OFFSET 1;

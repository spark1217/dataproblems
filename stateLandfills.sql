/**
Suppose you are given the following table, containing information around total tonnage of trash for various landfills across various states. 
In other words, each row represents the total weight (in tons) of trash at a specific landfill site in a specific state.
Using the above table, write a SQL query to return the landfill with the second highest amount of garbage (based on weight) for each state shown. 
You can assume each row represents a unique landfill (e.g. the weights shown are the total weights, and do not need further aggregation) and each weight happens to be unique (e.g. there are no ties).
*/

/* Create a table(given table) */
CREATE TABLE landfill_weights (
  `landfillID` INTEGER,
  `weight` INTEGER,
  `state` VARCHAR(30),
  `number_garbage_vehicles` INTEGER
);

INSERT INTO landfill_weights
  (`landfillID`, `weight`, `state`, number_garbage_vehicles)
VALUES
  ('12300', '95', 'California', '1005'),
  ('12401', '85', 'California', '850'),
  ('00992', '105', 'New York', '1300'),
  ('00882', '100', 'New York', '1000'),
  ('11100', '55', 'Michigan', '580'),
  ('11201', '75', 'Michigan', '700'),
  ('11207', '60', 'Michigan','500');

/* Query */
SELECT a.landfillID, a.state, a.weight
FROM landfill_weights a
LEFT JOIN landfill_weights b ON a.state = b.state
GROUP BY a.landfillID, a.state,a.weight
HAVING SUM(a.weight < b.weight) = 1
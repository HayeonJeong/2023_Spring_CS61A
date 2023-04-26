.read data.sql


CREATE TABLE bluedog AS
  SELECT "blue" AS color, "dog" as pet UNION ALL
  SELECT "blue"         , "dog"        UNION ALL
  SELECT "blue"         , "dog"        UNION ALL
  SELECT "blue"         , "dog"        UNION ALL
  SELECT "blue"         , "dog"        UNION ALL
  SELECT "blue"         , "dog"        UNION ALL
  SELECT "blue"         , "dog"        UNION ALL
  SELECT "blue"         , "dog"        UNION ALL
  SELECT "blue"         , "dog"        UNION ALL
  SELECT "blue"         , "dog";

CREATE TABLE bluedog_songs AS
  SELECT "blue" AS color, "dog" as pet, "Glimpse of Us" as song UNION ALL
  SELECT "blue"         , "dog"       , "The Other Side of Paradise" UNION ALL
  SELECT "blue"         , "dog"       , "Leave the Door Open" UNION ALL
  SELECT "blue"         , "dog"       , "Bohemian Rhapsody" UNION ALL
  SELECT "blue"         , "dog"       , "Dancing Queen" UNION ALL
  SELECT "blue"         , "dog"       , "Palette" UNION ALL
  SELECT "blue"         , "dog"       , "Bohemian Rhapsody" UNION ALL
  SELECT "blue"         , "dog"       , "good 4 u" UNION ALL
  SELECT "blue"         , "dog"       , "Clair de Lune" UNION ALL
  SELECT "blue"         , "dog"       , "Dancing Queen";


CREATE TABLE smallest_int_having AS
  SELECT time, MIN(smallest) FROM students GROUP BY smallest HAVING COUNT(*) == 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
  FROM students AS a, students AS b
  WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT s.seven
  FROM students AS s, numbers AS n
  WHERE s.number = 7 AND n."7" = "True" AND s.time = n.time;


CREATE TABLE average_prices AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";


CREATE TABLE lowest_prices AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";


CREATE TABLE shopping_list AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";


CREATE TABLE total_bandwidth AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";


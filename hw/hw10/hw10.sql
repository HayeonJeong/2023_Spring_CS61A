CREATE TABLE parents AS
  SELECT "abraham" AS parent, "barack" AS child UNION
  SELECT "abraham"          , "clinton"         UNION
  SELECT "delano"           , "herbert"         UNION
  SELECT "fillmore"         , "abraham"         UNION
  SELECT "fillmore"         , "delano"          UNION
  SELECT "fillmore"         , "grover"          UNION
  SELECT "eisenhower"       , "fillmore";

CREATE TABLE dogs AS
  SELECT "abraham" AS name, "long" AS fur, 26 AS height UNION
  SELECT "barack"         , "short"      , 52           UNION
  SELECT "clinton"        , "long"       , 47           UNION
  SELECT "delano"         , "long"       , 46           UNION
  SELECT "eisenhower"     , "short"      , 35           UNION
  SELECT "fillmore"       , "curly"      , 32           UNION
  SELECT "grover"         , "short"      , 28           UNION
  SELECT "herbert"        , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  SELECT p.child
  FROM parents AS p, dogs as d
  WHERE p.parent = d.name
  ORDER BY -d.height;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT d.name, s.size
  FROM dogs AS d, sizes AS s
  WHERE min < d.height AND d.height <= max;


-- Filling out this helper table is optional
CREATE TABLE siblings AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";

-- Sentences about siblings that are the same size
CREATE TABLE sentences AS
  SELECT "The two siblings, " || p1.child || " plus " || p2.child || " have the same size: " || s.size
  FROM dogs as d1, dogs as d2, parents as p1, parents as p2, sizes as s
  WHERE p1.parent = p2.parent
    AND p1.child = d1.name AND p2.child = d2.name
    AND s.min < d1.height AND d1.height <= s.max
    AND s.min < d2.height AND d2.height <= s.max
    AND d1.name < d2.name;


-- Height range for each fur type where all of the heights differ by no more than 30% from the average height
CREATE TABLE low_variance AS
  SELECT d.fur, MAX(d.height) - MIN(d.height) AS range
  FROM dogs AS d
  WHERE  d.height >= (SELECT AVG(d2.height) * 0.7
                      FROM dogs as d2
                      WHERE d2.fur = d.fur)
    AND d.height <= (SELECT AVG(d2.height) * 1.3
                      FROM dogs as d2
                      WHERE d2.fur = d.fur)
  GROUP BY d.fur
  HAVING COUNT(*) = (SELECT COUNT(*)
                      FROM dogs AS d2
                      WHERE d2.fur = d.fur);


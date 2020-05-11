/* The example uses a WHERE clause to show the population of 'France'
Modify it to show the population of Germany */

SELECT population FROM world
  WHERE name = 'France'


/* The word IN allows us to check if an item is in a list
Show the name and population for 'Sweden', 'Denmark' and 'Norway' */

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Denmark', 'Norway');


/* BETWEEN allows range checking (inclusive)
Modify it to show the country and the area for countries with an area between 200,000 and 250,000 */

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
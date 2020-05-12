/* Show the name for the countries that have a population of at least 200 million */

SELECT name FROM world
  WHERE population >= 200000000


/* Give the name and the per capita GDP for those countries with a population of at least 200 million */

SELECT name, (gdp/population)
  AS per_capita_gdp
  FROM world
  WHERE population >= 200000000


/* Show the name and population in millions for the countries of the continent 'South America' */

SELECT name, population/1000000
  FROM world
  WHERE continent = 'South America'


/* Show the name and population for France, Germany, Italy */

SELECT name, population
  FROM world
  WHERE name IN ('Germany', 'France', 'Italy')


/* Show the countries which have a name that includes the word 'United' */

SELECT name 
  FROM world 
  WHERE name LIKE ('%United%')


/* Show the countries that are big by area (3 million sq km) or by population (250 million) */

SELECT name, population, area
  FROM world
  WHERE population > 250000000 OR area > 3000000


/* Show that countries that are big by area or big by population but not both (XOR) */

SELECT name, population, area
  FROM world
  WHERE population > 250000000 XOR area > 3000000


/* For South America, show population in millions and GDP in billions both to 2 dp */

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
  FROM world
  WHERE continent = 'South America'


/* Show per-capita GDP for the trillion dollar countries to the nearest $1000 */

SELECT name, ROUND(gdp/population, -3)
  AS per_capita_gdp
  FROM world
  WHERE gdp >= 1000000000000


/* Show the name and capital where the name and capital have the same number of characters */

SELECT name, capital
  FROM world
  WHERE LENGTH(name) = LENGTH(capital)


/* Show the name and the capital where the first letters of each match
Don't include countries where the name and the capital are the same word 

You can use the function LEFT to isolate the first character
You can use <> as the NOT EQUALS operator */

SELECT name, capital
  FROM world
  WHERE LEFT(name, 1) = LEFT(capital,1)
  AND name <> capital


/* Find the country that has all the vowels (aeiou) and no spaces in its name */

SELECT name 
  FROM world
  WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %'
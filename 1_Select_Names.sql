/* You can use WHERE name LIKE 'B%' to find countries that start with 'B'
% is a wild-card and it can match any characters
Find the country that starts with 'Y' */

SELECT name FROM world
  WHERE name LIKE 'Y%'


/* Find the countries that end with y */

SELECT name FROM world
  WHERE name LIKE '%y'


/* Find the countries that contain the letter x */

SELECT name FROM world
  WHERE name LIKE '%x%'


/* Find the countries that end with 'land' */

SELECT name FROM world
  WHERE name LIKE '%land'


/* Find the countries that start with C and end with ia */

SELECT NAME from world
  WHERE name LIKE 'C%ia'


/* Find the country that has oo in the name */

SELECT name FROM world
  WHERE name LIKE '%oo%'


/* Find the countries that have three of more a in the name */

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'


/* You can use the underscore as a single character wildcard
Find the countries that have 't' as the second character */

SELECT name FROM world
  WHERE name LIKE '_t%'
ORDER BY name


/* Find the countries that have two 'o' characters seperated by two others */

SELECT name FROM world
  WHERE name LIKE '%o__o%'


/* Find the countries that have exactly four characters */

SELECT name FROM world
  WHERE name LIKE '____'


/* Find the country where the name is the capital city */

SELECT name
  FROM world
  WHERE name = capital


/* Find the country where the capital is the country plus 'city' i.e. capital of Mexico is Mexico City*/

SELECT name 
  FROM world
  WHERE capital = concat(name, ' City')


/* Find the capital and the name where the capital includes the name of the country */

SELECT capital, name
  FROM world
  WHERE capital LIKE concat('%', name, '%')


/* Find the capital and the name where the capital is an extension of name of the country */

SELECT capital, name 
  FROM world
  WHERE capital LIKE concat('%', name, '%')
  AND capital NOT LIKE name


/* Show the name and the extension where the capital is an extension of name of the country
i.e. Monaco-Ville the name is Monaco and the extension is -Ville */

SELECT name, REPLACE(capital, name, '')
  FROM world
  WHERE capital LIKE concat(name, '%')
  AND capital NOT LIKE name 
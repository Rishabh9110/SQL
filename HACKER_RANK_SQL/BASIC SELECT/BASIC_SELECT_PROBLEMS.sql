-- PROBLEM-1-Query all columns (attributes) for every row in the CITY table.
SELECT * FROM city;
--problem-2-Query all columns for a city in CITY with the ID 1661.
SELECT * FROM city WHERE id=1661;
--problem-3-uery all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM city WHERE COUNTRYCODE='jpn';
--problem-4-Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT name FROM city WHERE countrycode='jpn';
--problem-5-Query a list of CITY and STATE from the STATION table.
SELECT city,state FROM station;
/*problem-6(WEATHER OBSERVATION STATION 3)-Query a list of CITY names from STATION for cities that have an even ID number.
Print the results in any order, but exclude duplicates from the answer.*/
SELECT DISTINCT city FROM station WHERE id%2=0;
/*problem-7-(Weather Observation Station 4)-Find the difference between the total number of CITY entries in the table
and the number of distinct CITY entries in the table.*/
SELECT COUNT(city)-Count(DISTINCT city) FROM STATION;
/*problem-8(wheather observation station 5)-Query the two cities in STATION with the shortest and longest CITY names,
as well as their respective lengths (i.e.: number of characters in the name). 
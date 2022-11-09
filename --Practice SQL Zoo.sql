--Practice SQL Zoo

-- Part 1 Simple selects

--1
SELECT name, continent, population FROM world

--2
SELECT name FROM world
WHERE population > 200000000

--3
select name, gdp/population
from world
where population > 200000000

--4

select name, population/1000000
from world
where continent = 'South America'

--5

select name, population
from world
where name IN ('France', 'Germany', 'Italy')

--6

select name
from world
where name LIKE '%United%'

--7
select name, population, area
from world
where area > 3000000 OR population > 250000000

--8

select name, population, area
from world
where (area > 3000000 AND population < 250000000)
OR
(area < 3000000 AND population > 250000000)

--9

select name, round(population/1000000,2), round(gdp/1000000000, 2) 
from world
where continent = 'South America'

--10

select name, round(gdp/population,-3)
from world
where gdp >= 1000000000000

--11

SELECT name, capital
  FROM world
 WHERE LEN(name) = LEN(capital)

 --12

 SELECT name, capital
FROM world
where LEFT(name,1) = LEFT(capital,1)

--13

SELECT name
   FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %'

--- Practice Nobel Table ---

--1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1960

--2

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

--3

select yr, subject
from nobel
where winner = 'Albert Einstein'

--4
select winner
from nobel
where subject = 'Peace' AND yr >=2000

--5

select yr, subject, winner
from nobel
where subject = 'Literature' AND yr >=1980 AND yr <=1989

--6

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

--7

select winner
from nobel
where winner like 'John%'

-- 8
SELECT *
FROM nobel
WHERE (subject = 'physics' AND yr = 1980) OR (subject = 'chemistry' AND yr = 1984)

--9

select yr, subject, winner
from nobel
where yr = 1980
AND subject <> 'chemistry'
AND subject <> 'medicine'

-- other solution for 9

select yr, subject, winner
from nobel
where yr = 1980
AND subject NOT IN('chemistry', 'medicine')

--10

select yr, subject, winner
from nobel
where (subject = 'medicine' AND yr < 1910) OR (subject = 'literature' AND yr >= 2004)
--11
select yr, subject, winner
from nobel
where winner = 'Peter GrÜnberg'

--12
select yr, subject, winner
from nobel
where winner = 'Eugene O''neill'

--13

select winner, yr, subject
from nobel
where winner like 'Sir%'
ORDER BY yr DESC, winner ASC

--14

SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'),subject,winner
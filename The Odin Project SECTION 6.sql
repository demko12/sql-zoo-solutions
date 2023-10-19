--1.List the films where the yr is 1962 [Show id, title]
SELECT id, title
 FROM movie
 WHERE yr=1962

--2.Give year of 'Citizen Kane'.
SELECT yr FROM movie
WHERE title = 'Citizen Kane'

--3.List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.
SELECT id,title,yr FROM movie
WHERE title LIKE 'Star Trek%'
order by yr

--4.What id number does the actor 'Glenn Close' have?
SELECT id from actor
WHERE name like 'Glenn Close'

--5.What is the id of the film 'Casablanca'
select id from movie where title = 'Casablanca'

--6.Obtain the cast list for 'Casablanca'. Use movieid=11768, (or whatever value you got from the previous question)
select actor.name from actor
join casting on actor.id=casting.actorid
join movie on casting.movieid=movie.id
where movieid='11768'

--7.Obtain the cast list for the film 'Alien'
SELECT actor.name 
FROM actor
JOIN casting ON actor.id=casting.actorid
JOIN movie ON casting.movieid=movie.id
WHERE title = 'Alien'

--8.List the films in which 'Harrison Ford' has appeared
SELECT movie.title
FROM movie
JOIN casting ON movie.id=casting.movieid
JOIN actor ON casting.actorid=actor.id
WHERE actor.name LIKE 'Harrison Ford'

--9.List the films where 'Harrison Ford' has appeared - but not in the starring role. [Note: the ord field of casting gives the position of the actor. If ord=1 then this actor is in the starring role]
SELECT title
FROM movie
JOIN casting ON movie.id=casting.movieid
JOIN actor ON casting.actorid=actor.id
WHERE name LIKE 'Harrison Ford'
AND ord <> 1


USE movieratings;

#Ex1
#Find the titles of all movies directed by “Steven Spielberg”

SELECT title#finnd_information_movie
FROM movie
WHERE director = "Steven Spielberg";#find_name_of_director_steven_spielerg

EXPLAIN SELECT title
FROM movie
WHERE director = "Steven Spielberg";

#Ex2
#Find all years that have a movie that received a rating of 4 or 5, and sort them in 
#increasing order

SELECT `year`
FROM movie AS m JOIN rating AS r#as_used_for_ rename_a_column_with_an_alias. 
	ON m.mID = r.mID#JOIN clause is used to combine rows from two or more tables
WHERE stars = 4 OR stars = 5#ON_used_specify arbitrary conditions 
GROUP BY m.year;

EXPLAIN SELECT `year`
FROM movie AS m JOIN rating AS r
	ON m.mID = r.mID
WHERE stars = 4 OR stars = 5
GROUP BY m.year;#group_by_used_statement groups rows that have the same values into summary rows

#Ex3
#Find the titles of all movies that have no ratings

SELECT title
FROM movie AS m
WHERE m.mID NOT IN#find_information_all_movies_but_noratings
	(SELECT m.mID
	FROM movie AS m JOIN rating AS r
		ON m.mID = r.mID);
		
EXPLAIN SELECT title
FROM movie AS m
WHERE m.mID NOT IN
	(SELECT m.mID
	FROM movie AS m JOIN rating AS r
		ON m.mID = r.mID);
		
#Ex4
#Some reviewers didn't provide a date with their rating. Find the names of all reviewers 
#who have ratings with a NULL value for the date.

SELECT `name`
FROM reviewer AS re JOIN rating AS r#find_name_forme_reviewer_join_reviewer_as_rating
	ON re.rID = r.rID
WHERE ratingDate IS NULL;

EXPLAIN SELECT `name`
FROM reviewer AS re JOIN rating AS r
	ON re.rID = r.rID
WHERE ratingDate IS NULL;

#Ex5
#Write a query to return the ratings data in a more readable format: reviewer name, movie 
#title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title,
#and lastly by number of stars

SELECT `name`,title,stars,ratingDate
FROM movie AS m JOIN rating AS r JOIN reviewer AS re
	ON m.mID = r.mID AND r.rID = re.rID
ORDER BY `name`,title,stars;

EXPLAIN SELECT `name`,title,stars,ratingDate
FROM movie AS m JOIN rating AS r JOIN reviewer AS re
	ON m.mID = r.mID AND r.rID = re.rID
ORDER BY `name`,title,stars;

#Ex6
#Find the names of all reviewers who rated “Gone with the Wind”

SELECT DISTINCT `name`
FROM reviewer AS re JOIN rating AS r JOIN movie AS m
	ON re.rID = r.rID AND r.mID = m.mID
WHERE title = "Gone with the Wind";

EXPLAIN SELECT DISTINCT `name`
FROM reviewer AS re JOIN rating AS r JOIN movie AS m
	ON re.rID = r.rID AND r.mID = m.mID
WHERE title = "Gone with the Wind";

#Ex7
#For any rating where the reviewer is the same as the director of the movie, return the 
#reviewer name, movie title, and number of stars

SELECT `name`,title,stars
FROM reviewer AS re JOIN rating r JOIN movie AS m
	ON re.rID = r.rID AND r.mID = m.mID
WHERE re.name = m.director;

EXPLAIN SELECT `name`,title,stars
FROM reviewer AS re JOIN rating r JOIN movie AS m
	ON re.rID = r.rID AND r.mID = m.mID
WHERE re.name = m.director;

#Ex8
#Return all reviewer names and movie names together in a single list, alphabetized

SELECT `name`,title
FROM reviewer AS re JOIN rating AS r JOIN movie AS m
	ON re.rID = r.rID AND r.mID = m.mID
ORDER BY `name`,title;

EXPLAIN SELECT `name`,title
FROM reviewer AS re JOIN rating AS r JOIN movie AS m
	ON re.rID = r.rID AND r.mID = m.mID
ORDER BY `name`,title;

#Ex9
#Find the titles of all movies not reviewed by “Chris Jackson”

SELECT title
FROM movie 
WHERE title NOT IN
	(SELECT title
	FROM movie AS m JOIN rating AS r JOIN reviewer AS re
		ON m.mID = r.mID AND r.rID = re.rID
	WHERE `name` = "Chris Jackson");
	
EXPLAIN SELECT title
FROM movie 
WHERE title NOT IN
	(SELECT title
	FROM movie AS m JOIN rating AS r JOIN reviewer AS re
		ON m.mID = r.mID AND r.rID = re.rID
	WHERE `name` = "Chris Jackson");
	
#Ex10
#For all pairs of reviewers such that both reviewers gave a rating to the same movie, return
#the names of both reviewers. Eliminate duplicates, don't pair reviewers with themselves, 
#and include each pair only once. For each pair, return the names in the pair in alphabetical
#order

SELECT Distinct re1.name,re2.name
FROM rating AS r1 JOIN rating AS r2 ON r1.mID = r2.mID
		JOIN reviewer AS re1 ON re1.rID = r1.rID
		JOIN reviewer AS re2 ON re2.rID = r2.rID
WHERE re1.name != re2.name
ORDER BY re1.name,re2.name;

EXPLAIN SELECT Distinct re1.name,re2.name
FROM rating AS r1 JOIN rating AS r2 ON r1.mID = r2.mID
		JOIN reviewer AS re1 ON re1.rID = r1.rID
		JOIN reviewer AS re2 ON re2.rID = r2.rID
WHERE re1.name != re2.name
ORDER BY re1.name,re2.name;


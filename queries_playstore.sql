-- Comments in SQL Start with dash-dash --
-- Question 1 Find the app with an ID of 1880:

-- SELECT * FROM analytics 
-- WHERE id = 1880;

-- Question 2 Find the ID and app name for all apps that were last updated on August 01, 2018.:

-- SELECT id, app_name FROM analytics 
-- WHERE last_updated = 'August 01, 2018';

-- Question 3 Count the number of apps in each category, e.g. 'Family | 1972'.:

-- SELECT category,COUNT(*) FROM analytics 
-- GROUP BY category;

-- Question 4 Find the top 5 most-reviewed apps and the number of reviews for each.:

-- SELECT app_name, reviews FROM analytics 
-- ORDER BY reviews DESC  LIMIT 5;

-- Question 5 Find the app that has the most reviews with a rating greater than equal to 4.8.:

-- SELECT * FROM analytics 
-- WHERE rating >=4.8  
-- ORDER BY reviews DESC LIMIT 1;

-- Question 6 Find the average rating for each category ordered by the highest rated to lowest rated.:

-- SELECT category, AVG(rating) FROM analytics 
-- GROUP BY category 
-- ORDER BY avg DESC;

-- Question 7 Find the name, price, and rating of the most expensive app with a rating that’s less than 3.:

-- SELECT app_name, price, rating FROM analytics
-- WHERE rating < 3
-- ORDER BY price DESC LIMIT 1;

-- Question 8 Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.:

-- SELECT * FROM analytics
-- WHERE min_installs <= 50 AND rating >= 1
-- ORDER BY rating DESC;

-- Question 9 Find the names of all apps that are rated less than 3 with at least 10000 reviews.:

--  SELECT app_name, rating, reviews FROM analytics
--  WHERE rating < 3 AND reviews >= 10000;

-- Question 10 Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.:

-- SELECT * FROM analytics;
-- SELECT * FROM analytics
-- WHERE price BETWEEN .10 AND 1.00
-- ORDER BY reviews DESC LIMIT 10;

-- Question 11 Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery: http://www.postgresqltutorial.com/postgresql-max-function/:

-- SELECT * FROM analytics
-- ORDER BY last_updated ASC LIMIT 1;

-- Question 12 :

-- SELECT * FROM analytics
-- ORDER BY price DESC  LIMIT 1;

-- Question 13 :

-- SELECT SUM(reviews) AS "total reviews" FROM analytics;


-- Question 14 Find all the categories that have more than 300 apps in them.:

-- SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;

-- Question 15 :

-- SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion
-- FROM analytics
-- WHERE min_installs >= 100000
-- ORDER BY proportion DESC LIMIT 1;





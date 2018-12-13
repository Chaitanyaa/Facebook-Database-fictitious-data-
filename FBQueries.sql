## Facebook Database
#Our first goal was to create tables and entities to accommodate the data. 
#After obtaining the sql data, we used CREATE function to create tables. 
#One such was to create a table called ‘Sales_table’ which shows all the items ordered by price and quantity from the ‘Marketplace’ table. 
#The following query was used to create the table:
CREATE TABLE Sales_Table AS (SELECT Item_id, Category, Price, Quantity FROM marketplace);



#After creating the Sales Table, 
#we went ahead and calculated which items were being sold the most, with the following statement:
SELECT * FROM Sales_Table 
WHERE Quantity IN (SELECT MAX(Quantity) FROM Sales_Table)
ORDER BY Price DESC;


#We also calculated the total number of items currently in marketplace along with the numbers in each category.
SELECT category, quantity, count(category) FROM marketplace GROUP BY category WITH rollup;


#Since we wanted to know the total cost distributed for each category, 
#we did the following query and sorted the results in 5 quantile ranges of price.
SELECT item_id, category, quantity*price AS cost, NTILE (5) OVER (ORDER BY quantity*price) AS quantile FROM marketplace GROUP BY category;



#As a part of performing routine activities, we calculated the percentage of female users and male users in our dataset.
SELECT ROUND(((SELECT COUNT(*) FROM user_basic WHERE gender = 'Male') /
(SELECT COUNT(*) FROM user_basic))*100,2) AS "Percentage of Male users",ROUND(((SELECT COUNT(*) FROM user_basic WHERE gender = 'Female')
/(SELECT COUNT(*) FROM user_basic))*100,2) AS "Percentage of Female users" FROM DUAL;



#Next was the calculation of Age of users as a derived attribute.
SELECT *, YEAR(CURDATE()) - YEAR(birth_date) AS Age, NTILE(4) OVER (ORDER BY 'Age' ASC) AS "Quantile (Age groups - 1 to 4)" FROM user_basic;

#In order to execute a realistic scenario, we decided to find the users who are from California, and then found their education details.
SELECT concat (First_name," ", Last_name) as Name, education_level, lives_in, occupation FROM user_basic JOIN user_about ON user_basic.user_id = user_about.user_id WHERE lives_in = 'California';


#	As a part of the routine activities, we decided to find out a specific user’s friends. 
#We chose the user “Harry Potter” and tried to find out the friends of Mr. Potter. 
#Even though we were expecting Ron Weasley and Hermione Granger to be in the list, we were quite surprised by the results. 
SELECT user_basic.user_id, friends.start_date, CONCAT (user_basic.first_name," ",user_basic.last_name) AS Friend, (CURDATE() - friends.start_date) AS FriendshipinDays FROM friends JOIN user_basic ON user_basic.user_id = friends.friends_user_id WHERE friends.user_id = (SELECT user_id FROM user_basic WHERE user_basic.first_name = 'Harry');



#In order to find the details of an event, 
#we created a query with respect to event entity. 
#The following query finds the count of all events listed:
SELECT Venue AS "Event Venue", Date_Time, COUNT(Invitees_Userid) AS "No. of Invites" FROM Events GROUP BY Venue, Date_Time;


#We found the names of the invitees to the events:
SELECT CONCAT(first_name," ",last_name) AS Name, Venue, Date_Time   FROM user_basic JOIN events ON events.invitees_userid = user_basic.user_id ORDER BY Venue, Date_Time;



#Among its millions of users, there are a lot of inactive users who could be considered as shadow profiles/ inactive users. 
#We executed a query to find out who were the users who had not logged in the past six months, thus classifying them as inactive users. 
#We deleted such users without compromising the referential integrity. 
SET SQL_SAFE_UPDATES = 0;
DELETE FROM user_basic WHERE user_id IN
(SELECT u.user_id FROM User_about u JOIN activity_log a ON a.User_id = u.User_id
WHERE (a.Activity_date < (NOW() - INTERVAL 6 MONTH)) GROUP BY u.user_id);
SET SQL_SAFE_UPDATES = 1;
DELETE FROM user_basic WHERE user_id = 100528;



#We imagined a scenario where the FBI asks Facebook team to help them out by finding the users whose names end with “er”, 
#which could help them in an ongoing investigation. 
#We decided to help them out by doing this query:
SELECT * FROM user_basic WHERE Last_name LIKE '%er';


#The FBI seemed to have obtained an anonymous tip on the person, the tip was that the name ends with “otter”, 
#which luckily narrows down the suspects.
SELECT *from user_basic WHERE Last_name LIKE '%otter%';



#We decided to do a descriptive analysis of budget 
#allocation of Advertisements by finding total, minimum, maximum and average of budgets.
SELECT COUNT(budget) AS 'Total No' SUM(budget) AS 'Total Budget', AVG(budget) AS 'Average Budget', MIN(budget) AS 'Minimum', MAX(budget) AS 'Maximum Bdget' FROM advertisements;


#After finding out the details about the budget, we explored various mathematical functins such as midrange, standard deviation, harmonic average, arithmetic mean and geometric mean.                                                                                                                                                                                                                                                                                                                                                          
SELECT ((MAX(budget) + MIN(budget))/2) AS 'Midrange', STDDEV(budget) AS 'Standard Deviation',  VARIANCE(budget) AS 'Variance', SUM(budget) / COUNT(budget) AS 'Arithmetic Mean', COUNT(budget) / SUM(1/budget) AS 'Harmonic Average', EXP(SUM(LOG(budget))) AS 'Geometric Mean' FROM advertisements;





#Next, as a part of our objective, we did recommendations of least expensive games from the Games data.
SELECT name AS 'Are you ready? - Exciting games!', category 'Category', paid as 'Do I pay?', price AS 'Recommended - Low to High Price!' FROM games ORDER BY price ASC;




#As per our objectives of the project, we planned to create views, and we created views for Ad plans.
CREATE VIEW Ads_Premium AS SELECT Tool_name AS "Ad Tools you get!", Description AS "Details",  Cost AS "Price - only from",Trial_weeks AS "Trial weeks" FROM ad_metrics ORDER BY Cost;
CREATE VIEW Ads_Booster AS SELECT Tool_name AS "Ad Tools you get!", Description AS "Details",  Cost AS "Price - only from",Trial_weeks AS "Trial weeks" FROM ad_metrics WHERE Ad_tool_group = 1 OR Ad_tool_group = 2 ORDER BY Cost;
CREATE VIEW Ads_Basic AS SELECT Tool_name AS "Ad Tools you get!", Description AS "Details",  Cost AS "Price - only from",Trial_weeks AS "Trial weeks" FROM ad_metrics WHERE Ad_tool_group = 1 ORDER BY Cost;



#After creating the views, we could view the Views with Data Analysis toolkits for each Ad plan.
SELECT * FROM Ads_Basic;
SELECT * FROM Ads_Booster;
SELECT * FROM Ads_Premium;


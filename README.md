# BUS243
Facebook Database mini project
https://docs.google.com/spreadsheets/d/12ByTlDCkfIcLcwjDnqBEX111kOFukkwqFPVU5dE9KHQ/edit?usp=sharing


The ER diagram has the following entities with their own attributes:

<b>User_basic:</b> Has various basic attributes of the user namely User_id (Primary Key), First_name, Last_name, Password, Email, Mobile number, Birth_date and Gender.

<b>User_about: with attributes Occupation, Education, Lives_in, Address_id and Date_of_joining.

<b>Address: Attributes are Address_id, Street, City, State, Country, Zip code and Region.

<b>Pages: Attributes are Page_id, Category, User_id, No_of_followers.

<b>MarketPlace: Attributes are item_id, category, quantity, location, price, seller_id and item_description.

<b>Events: Attributes are event_id, interested_userid, Going_userid, Date_time, Venue.

<b>Photos: Attributes are photo_id, user_id, caption, tags, location, upload_date_time. 

	Activity_log: with attributes User_id, friend_id, action_performed, activity_date.

	Games: attributes are game_id, user_id, category, captions, score, paid.

	Posts: with attributes post_id, user_id, action_performed, privacy_level.

	Friends: with attributes friend_id, user_id, friends_user_id, category, start_date, since_when.

	Advertisements: ad_id, page_id, no_of_clicks, traffic, location, audience, budget, schedule.

	DA Toolkit: tool_id, tool_name, trial_weeks, cost, description.

Follow the steps below to create a mongodump from the server and import it another server/local machine which has a username and a password

1. mongodump -d dbname -o dumpname -u username -p password
2. scp -r user@remote:~/location/of/dumpname ./
3. mongorestore -d dbname dumpname/dbname/ -u username -p password

# SQL-Case-study- Case Study - 120 Years of Olympics Data
I conducted a comprehensive case study on a dataset that contained information about all Olympic games played from Athens 1896 to Rio 2016. The dataset includes two main tables: olympics_history and noc_regions.

Dataset Information
Dataset Source: Kaggle - 120 Years of Olympic History (Athletes and Results)
Tables:
olympics_history: Individual athlete information in Olympic events.
noc_regions: National Olympics participant and their regions.
Dataset Overview
athlete_events.csv:

Total Rows: 271117
Total Columns: 15
Each row corresponds to an individual athlete competing in an Olympic event.
Column	Description
ID	Unique number for each athlete
Name	Athlete's name
Sex	M or F
Age	Integer
Height	In centimeters
Weight	In kilograms
Team	Team name
NOC	National Olympic Committee 3-letter code
Games	Year and season
Year	Integer
Season	Summer or Winter
City	Host city
Sport	Sport
Event	Event
Medal	Gold, Silver, Bronze, or NA
noc_regions:

Total Rows: 231

Total Columns: 3

Column	Description
NOC	National Olympic Committee 3-letter code
Region	Region name
Notes	Additional information about the region
20 Questions Explored
From the dataset, I explored the following 20 questions utilizing MySQL:

1.How many Olympic games have been held?

2.List down all Olympic games held so far.

3.Mention the total number of nations that participated in each Olympic game.

4. Fetch the total no of sports played in each olympic games.
5. Retrieve the top 10 countries with the most gold medals.
6.List all athletes who have won more than five gold medals.
7. List down total gold, silver and bronze medals won by each country.
8. Break down all olympic games where India won medal for Hockey and how many medals in each olympic games
9.List the cities that have hosted the Olympics more than once.
10. Find the Top 10 athletes who has won the most total medals.










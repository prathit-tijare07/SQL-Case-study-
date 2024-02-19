
create database olympics120HistoryDB;
use olympics120HistoryDB;

select * from athlete_events;
select * from noc_regions;

--  Questions  --

select count(*) from athlete_events;
select count(*) from noc_regions;

-- 1. How many olympics games have been held?
select count(distinct games) as total_olympics_games
from athlete_events;

-- 2. List down all Olympics games held so far.
select * from athlete_events;
select distinct year,city,season from athlete_events;

-- 3. Mention the total no of nations who participated in each olympics game?
select * from athlete_events;
select * from noc_regions;
select games,count(distinct region) as total_country 
from Athlete_events as a
JOIN Noc_regions as b
ON a.NOC = b.NOC
group by games
order by games ASC;

-- 4. Fetch the total no of sports played in each olympic games.
select * from athlete_events;

select games,count(distinct sport) as count_sports 
from athlete_events
group by games
order by Games ASC;

-- 5. Retrieve the top 10 countries with the most gold medals.
select * from athlete_events;
select team,NOC,count(medal) gold_medals from athlete_events
where medal = 'GOLD' 
group by team , nOC
order by Gold_medals DESC
lIMIt 10;

-- 6.List all athletes who have won more than five gold medals.
select * from athlete_events;
select name,sum(Case when medal = "Gold" then 1 ELSE 0 END)as gold_medal 
from athlete_events 
group by name
having sum(case when medal = "Gold" then 1 ELSe 0 END) > 5;

-- 7. List down total gold, silver and bronze medals won by each country.
select * from athlete_events;
select region,
count(case when medal = 'Gold' then 1 end) as gold,
count(case when medal = 'Silver' then 1 end) as silver,
count(case when medal = 'Bronze' then 1 end) as bronze
from olympics_history oh
JOIN olympics_history_noc_regions onc ON onc.noc = oh.noc
group by region
order by gold desc,silver desc,bronze desc;

-- 8. Break down all olympic games where India won medal for Hockey and how many medals in each olympic games
select * from athlete_events;
select team,games,count(medal) as hockey_medal
from olympics_history
where sport = 'Hockey' and team = 'India' and medal<>'NA'
group by team,games
order by games;

-- 9.List the cities that have hosted the Olympics more than once.
select * from athlete_events;
select city  from athlete_events
group by city
having count(*) > 1;

-- 10. Find the Top 10 athletes who has won the most total medals.*/
select name, count(medal)most_Won_medals from athlete_events
group by name
order by most_Won_medals DESC
LIMIT 10;







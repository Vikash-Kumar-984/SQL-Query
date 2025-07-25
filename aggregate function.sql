use world;

select * from country;

select sum(population)/1000000 as Total_World_Populataion_in_million from country;

select round(avg(population)/1000000,2) as Total_Average_Populataion,
avg(LifeExpectancy) as Avg_life,
avg(GNP) as Avg_gnp,
max(LifeExpectancy) as Max_life from country;

select count(name) as Total_Country,
count(distinct continent) as Total_continent
from country;


##Group by 

select 
continent, 
round(avg(population)/1000000,2) as Total_Average_Populataion,
round(avg(LifeExpectancy),2) as Avg_life,
round(avg(GNP),2) as Avg_gnp,
max(LifeExpectancy) as Max_life from country group by continent;


##Having

select 
continent, 
round(avg(population)/1000000,2) as Total_Average_Populataion,
round(avg(LifeExpectancy),2) as Avg_life,
round(avg(GNP),2) as Avg_gnp,
max(LifeExpectancy) as Max_life from country 
group by continent having avg_life > 50;


select * from country;

select name,
round(population/surfacearea,2) as Pop_Density,
round(GNP * 1000000/population,2) as GNP_per_cap
from country;

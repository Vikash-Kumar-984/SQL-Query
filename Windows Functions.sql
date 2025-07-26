use world;

select * from country;

#Windows Functions
select name, continent , row_number() over (order by name) as row_num from country;

select row_number() over (partition by continent order by name) as row_num ,name,continent from country;

select rank() over (partition by continent order by lifeexpectancy) as rank_num ,name,continent,lifeexpectancy from country;
#same lifeexpectancy will have same rank while different row_number

select rank() over (partition by continent order by lifeexpectancy) as rank_num ,
dense_rank() over (partition by continent order by lifeexpectancy) as Dense_rank_num ,
name,continent,lifeexpectancy from country;
#rank will skip the next rank if there is same value in previous rows, but in dense no rank is skipped


##Ntile
select * from city;

select *, ntile(4) over(order by population) from city; #it will cluster into 4 parts

##Lag
select * from country;

select name,population, lag(population,1) over (order by population desc) as Previous_Pop_compare_with_previous from country;

##Lead
select name,population, lead(population,1) over (order by population desc) as Next_Pop_compare_with_next from country;
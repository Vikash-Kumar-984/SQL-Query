use sakila;

select * from actor;

## String Functions
# Concat

select actor_id, first_name, last_name, concat(first_name," ", last_name) as Full_Name from actor;

# Upper/Lower
select actor_id, lower(first_name), lower(last_name) from actor;

# Replace
select replace("hello world", "world", "SQL") Output;


# Left/Right
select * from city;
select city_id,city, upper(left(city,3)) New_District, #choose 3 leftmost character
upper(right(city,3)) New_District from city;  #choose 3 rightmost character

# Substring
select * from customer;
select first_name, last_name, email, substring(email, 4,4) substring from customer; #from 4th character to next 4 character in email column

# Trim/Ltrim/Rtrim
select * from address;


select district, trim(concat("    ",district,"   ")) trimmed_dist from address; #Trim will remove the extra space

# Reverse
select reverse("Vikash");


# Length
select * from customer;
select first_name, email, length(email) as Email_Length from customer
order by Email_length desc;
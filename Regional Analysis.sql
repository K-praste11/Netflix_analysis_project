
-- 16. Which countries contribute the most content to Netflix?

select country,count(*) as content_count from netflix_titles
where country is not null AND country!=''
group by country
order by content_count desc;

-- 17. What are the most common content genres for each country?

select country,listed_in as genre,count(*) as common_content
from netflix_titles
where country is not null and country!=''
group by country, listed_in
order by common_content desc;

-- 18. Which country has the highest number of Netflix Originals?

select country, count(*) as number_titles
from netflix_titles
where country is not null and country!=''
group by country
order by number_titles desc limit 1;

-- 19. How many multi-country productions are available on Netflix?

select count(*) as production_count
from netflix_titles
where country is not null and country!=''
and country like '%,%'
;

-- 20. How does the distribution of content vary by country?

select country,count(*) as distribution_count
from netflix_titles
where country is not null and country!=''
group by country
order by distribution_count desc;

-- 
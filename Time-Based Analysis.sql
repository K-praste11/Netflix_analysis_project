-- 11.	How has the number of movies and TV shows added to Netflix changed over the years?

select release_year as year_added,count(*) as count_content
from netflix_titles
where release_year is not null
group by release_year
ORDER BY count_content DESC;	


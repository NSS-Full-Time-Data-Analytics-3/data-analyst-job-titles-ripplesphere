/* 1.
select count(*) from data_analyst_jobs; 
*/

/* 2.
select * from data_analyst_jobs limit 10;
// ExxonMobile
*/

/* 3.
select count(*) from data_analyst_jobs where location = 'TN';
-- TN: 21
select count(*) from data_analyst_jobs where location in ('TN','KY');
-- TN or KY: 27
*/

--  4.
select count(*) from data_analyst_jobs where location = 'TN' and star_rating > 4;
-- 3


-- 5. 
select count(*) from data_analyst_jobs where review_count between 500 and 1000;
-- 151

-- 6.
select location as state, round(avg(star_rating), 3) as avg_rating
from data_analyst_jobs
group by location
order by avg_rating desc;

-- 7.
select distinct title
from data_analst_jobs;

select count(distinct title)
from data_analyst_jobs;
-- 881

-- 8.
select distinct title
from data_analst_jobs
where location = 'CA';
-- 230

-- 9.
select company, round(avg(star_rating), 2) as avg_rating
from data_analyst_jobs
where review_count > '5000'
	and company is not null
group by company;
-- 40

-- 10.
select company, round(avg(star_rating), 4) as avg_rating
from data_analyst_jobs
where review_count > '5000'
	and company is not null
group by company
order by 2 desc;
-- 40

-- 11. Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
select distinct title
from data_analyst_jobs
where title ilike '%Analyst%';
-- 774

-- 12. How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
select distinct title
from data_analyst_jobs
where title not ilike '%Analyst%' and title not ilike '%Analytics%';
-- 4, Tableau 

-- Bonus
select distinct(domain) as industry, count(title) as job_count,
	max(skill) as skill,
	avg(days_since_posting) as days_since_posting
from data_analyst_jobs
where domain is not null
	and skill like '%SQL%'
	and days_since_posting > 21
group by domain
order by job_count desc;
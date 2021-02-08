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

/* 4.
select count(*) from data_analyst_jobs where star_rating > 4;
-- 416
*/

/* 5. 
select count(*) from data_analyst_jobs where review_count between 500 and 1000;
-- 151
*/
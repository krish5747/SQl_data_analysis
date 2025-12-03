SELECT 
quarter_first.job_title_short,
quarter_first.job_location,

quarter_first.job_via
from(
SELECT * from january_jobs
union all 
SELECT * from february_jobs
union all
SELECT * from march_jobs
) as quarter_first
WHERE quarter_first.salary_year_avg > 70000


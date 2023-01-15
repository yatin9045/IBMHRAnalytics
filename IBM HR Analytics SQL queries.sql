USE `ibmhranalyticsdb`;
/*
2. Which department's employee is the most likely to have the shortest commute between home and work?
*/

select department from departmentroles
where employeeNumber = (select a.employeeNumber 
						from (select employeeNumber, min(distanceFromHome) 
								from employees) a)
;

-- From the query, an employee from Sales has the shortest commute between home and work.

/*
4. The HR department feels they have the highest job satisfaction while 
Research & Development department feels their department has the highest environment satisfaction. Who is right?
*/

select department, avg(JobSatisfaction) as average_job_satisfaction 
from jobsatisfaction j, departmentroles d
where j.employeenumber = d.employeenumber
and department in ('Research & Development','Human Resources')
group by department
;

-- From the above query it is clear that Research & Development have a higher average job satisfaction when the average job satisfaction is compared from both the departments.

/*
5. An employee in Sales department has complained to HR saying that females are paid less than males in the company, in all departments. 
What insight can you provide to prove or disprove that statement?
*/

select d.department, e.gender, avg(s.monthlyincome) as avegrage_salary_by_dept_gender 
from salaries s, departmentroles d, employees e
where s.employeenumber = d.employeenumber
and e.employeenumber = d.employeenumber
group by d.department, e.gender
order by d.department, e.gender
;

-- From the above query, it is clear that females have a higher monthly income as compared to males in all departments.

/*
6. A press article in a business magazine has said that at this company, married men have higher performance ratings than divorced or single men. 
What initial finding can you obtain from the data to help articulate the company's response in this regard?
*/

select e.maritalstatus, avg(p.performancerating) from performancerating p, employees e
where e.employeenumber = p.employeenumber
and e.gender = 'Male'
group by e.maritalstatus
;

-- From the above query it is evident that single men have the highest avergage performance rating followed by married men and then by divorced men.

/*
7. If the company wants to cut travel costs, which department should the company focus on?
*/

select d.department, w.businesstravel, count(w.businesstravel) as count from workexpereince w, departmentroles d
where w.employeenumber = d.employeenumber
group by d.department, w.businesstravel
order by count(w.businesstravel) desc
;

-- From the above query, Research and development department has the people who travel. Hence Research & Development should be the first department to focus on for cutting travel costs.




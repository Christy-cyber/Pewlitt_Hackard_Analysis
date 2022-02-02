-- Challenge Deliverable 1--Steps 1-7
-- Create new Table -retirement titles- from employee and
-- titles tables, and filter on birthdate
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date, 
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no 
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no ASC;


-- Challenge Deliverable 1--Steps 8-15--create a -unique_titles-
-- table from the -retirement_titles- table using DISTINCT
-- ON emp_no and filter by to_date
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

-- Challenge Deliverable 1--Steps 16-22
-- Retrieve no of retiring employees by their most recent
-- job title 
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Challenge Deliverable 2--Steps 1-11
-- Create a mentorship eligibility table showing employees
-- who are eligible to participate in mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentor_elig
FROM employees AS e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as ti
		ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;

-- Additional analysis to determine number of mentors by
-- title
SELECT COUNT(emp_no), title
INTO mentor_by_title
FROM mentor_elig
GROUP BY title
ORDER BY count DESC;

-- Additional analysis to determine number of total 
-- current employees at P-H
SELECT e.emp_no, ti.to_date
INTO tot_curr_emp
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE ti.to_date = '9999-01-01'
ORDER BY e.emp_no ASC;

SELECT COUNT (emp_no)
FROM tot_curr_emp

-- Additional analysis to determine number of retirees 
-- per department
SELECT COUNT (emp_no)
FROM tot_curr_emp

SELECT ne.count, 
		ne.dept_no,
		d.dept_name
INTO ret_by_dept
FROM no_emp_ret_by_dept as ne
RIGHT JOIN departments as d
ON ne.dept_no = d.dept_no
ORDER by ne.count DESC;
WHERE ti.to_date = '9999-01-01'
ORDER BY e.emp_no ASC;

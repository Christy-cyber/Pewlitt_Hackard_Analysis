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
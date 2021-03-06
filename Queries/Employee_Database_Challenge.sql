-- Creating tables for Employee_Database_Challenge
--Deliverable 1

-- Create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.
SELECT 	e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS ti
	ON (e.emp_no = ti.emp_no)
	WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Create a Unique Titles table that contains the employee number, first and last name, and most recent title.
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Create a Retiring Titles table that contains the number of titles filled by employees who are retiring.
SELECT COUNT(ut.title),
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC

-- Deliverable 2
-- Create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees AS e
	INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
	INNER JOIN titles as ti
	ON (e.emp_no = ti.emp_no)
	WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
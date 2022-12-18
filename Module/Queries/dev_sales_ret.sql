SELECT e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
INTO sales_ret_info
FROM employees as e
INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
RIGHT JOIN departments as d
	ON (de.dept_no = d.dept_no)
WHERE (d.dept_name = 'Sales');

DROP TABLE dev_sales_ret_info;
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
--INTO dev_sales_ret_info
FROM employees as e
INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
RIGHT JOIN departments as d
	ON (de.dept_no = d.dept_no)
WHERE (d.dept_name = 'Sales')
	OR (d.dept_name = 'Development');
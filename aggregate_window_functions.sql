use regex1;
drop table employees;
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    dept VARCHAR(20),
    salary INT
);

-- Inserting Data
INSERT INTO employees (dept, salary) VALUES
("hr", 200),
("hr", 300),
("hr", 100),
("marketing", 70),
("marketing", 50),
("marketing", 200),
("marketing", 400),
("marketing", 200),
("marketing", 600),
("dsa", 150),
("dsa", 120),
("dsa", 40),
("dsa", 90),
("dsa", 500);

SELECT dept,
 SUM(salary) FROM employees GROUP BY dept;
 
SELECT dept, 
AVG(salary) FROM employees GROUP BY dept;

SELECT dept, 
COUNT(*) FROM employees GROUP BY dept;

SELECT *, RANK() 
OVER (PARTITION BY dept ORDER BY salary) FROM employees;

SELECT *, DENSE_RANK() 
OVER (PARTITION BY dept ORDER BY salary) FROM employees;

SELECT *, ROW_NUMBER() 
OVER (PARTITION BY dept ORDER BY salary) FROM employees;

SELECT *, LAG(salary) 
OVER (PARTITION BY dept ORDER BY id) FROM employees;

SELECT *, LEAD(salary) 
OVER (PARTITION BY dept ORDER BY id) FROM employees;

SELECT *, NTILE(4) 
OVER (ORDER BY salary DESC) FROM employees;

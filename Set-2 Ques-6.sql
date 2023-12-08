use assignment;

#Ques 6. Write a query that prints a list of employee names having a salary greater than $2000 per month who have been employed for less than 36 months. Sort your result by descending order of salary. [table: emp]

select*from emp;

SELECT CONCAT(FIRST_NAME,'',LAST_NAME) AS EMPLOYEE,
       CONCAT (SALARY,'$') AS 'SALARY($)',
       HIRE_DATE,
       TIMESTAMPDIFF(MONTH,HIRE_DATE,CURDATE()) AS 'TOTAL_MONTHS_JOINED'
FROM EMP
WHERE SALARY > 2000
HAVING TOTAL_MONTHS_JOINED < 36
ORDER BY SALARY DESC;

-- employyes table
-- 1. Fetch & display all the employee details
select * from employees;

-- 2.Fetch & display employee details for the employees having job Title='Sales Rep' and Employee number between 1200 and 1500
select * from employees where jobTitle = "sales rep " and employeenumber between 1200 and 1500 ;

-- 3. Fetch & display employee details for the employees having office code 2 or more than 2 and job title is not Sales Rep
select * from employees where  officeCode >= 2 and jobTitle not in ("sales rep");

-- 4. List out last name, first name for all employees and rename  last name as “Name of the employee”, display as sorting order of their last name
select firstname,lastname as Nameofthemployee from employees order by lastName;

-- 5. List out the employees who are working in office code 1, 3 , 5
select * from employees where  officeCode  in (1,3,5); 

-- 6. List out the employees who are not working in office code 1 , 3
select  * from  employees where officeCode not in (1,3);

-- 7. Show Count of employees who are working in different office in the organization
SELECT COUNT(DISTINCT officeCode) AS NumberOfDifferentOffices FROM employees;



-- customers tables
-- 1. Fetch & display customers details(Customers table) who does not belongs to USA
select * from customers where country not in ("usa");

-- 2. Fetch & display customers details(Customers table)  having customer number not in the range 150 to 200
select * from customers where customernumber not between 150 and 200;

-- 3. List out all customers belongs to city Singapore, Liverpool or NYC
select * from customers where city in ("Singapore", "Liverpool" ,"NYC");

-- 4. List the details about customer first name “SMITH”
select * from customers where contactfirstname = "SMITH";

-- 5. List out the customer having credit limit between 50000 and 95000
select * from customers where creditLimit between 50000 and 95000;

-- 6. List out the customers whose first name starts with “S”
select * from customers where contactFirstName like "s%";

-- 7. List out the customers whose name start with “S” and end with “H”
select * from customers where  customerName like  "s%h";


-- 8. List out the customers whose first name length is 5 and start with “S”
select * from customers where contactFirstName like "S_____";

-- 9. List out the customers whose first name length is exactly 8
select * from customers where contactFirstName like "________";

-- 10. List out the customers whose first name starting with a and ending with e 
select * from customers where contactFirstName like "A%E";

-- 11. List out the customers whose first name contains ee
select * from customers where contactFirstName like "%ee%";

-- 12. List out the maximum credit limit of customers belongs to different states
select state, max(creditlimit) AS creditlimit from customers group by state;
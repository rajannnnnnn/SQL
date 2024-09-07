 ## HR Management using SQL
In this project, _employee_ database is created and SQL operations are implemented.

### Schema:
![Screenshot (159)](https://github.com/user-attachments/assets/c19355da-40b0-4435-bcb7-1ef5d72eb661)

### Creating Database and Tables
⦿  Drop the 'employee' database if it exists and recreate it, ensuring that all tables are created with the appropriate constraints as instructed.
**Departments Table:**
⦿  Ensure that the "department_id" uniquely identifies each department.
⦿  Set up constraints on the "department_name" to avoid duplicate and null entries.
**Location Table:**
⦿  Establish a mechanism to automatically generate unique identifiers for each location, ensuring that they are incremented sequentially.
⦿  Implement constraints to prevent the insertion of null and duplicate locations.
**Employees Table:**
⦿  Guarantee that each employee has a distinct identifier.
⦿  Create a restriction to ensure that the employee's name is always provided.
⦿  Enforce a condition to ensure that the employee's age is 18 or above.
⦿  Automatically assign the current date to the "hire_date" field if not specified.
⦿  Establish links between the "department_id" and "location_id" fields in the "employees" table and their respective tables.

### Data Manipulation
**Selection (SELECT):** Write SQL queries to retrieve the following information:
⦿  Retrieve all data from the Departments table.
⦿  Display only the location name from the Location table.
⦿  Display the employee names and their respective designations.
 
**Updating (UPDATE):** Update the records in the Employees table based on the following criteria:
⦿  Change the designation of employee with ID 5001 to 'Senior Data Analyst'.
⦿  Increase the salary of all employees in the Finance department by 10%.

**Deletion (DELETE):** Write SQL statements to delete the following records:
⦿  Remove all records from the Employees table where the hire date is before '2017-01-01'.
⦿  Delete the record of the employee with ID 5025.

### Data Retrieval:
Distinct Values:
⦿  Write a query to retrieve distinct salaries from the Employees table.
Alias (AS):
⦿  Provide aliases for the "age" and "salary" columns as "Employee_Age" and "Employee_Salary", respectively.
Where Clause & Operators (Arithmetic, Comparison, Logical):
⦿  Calculate the net salary per employee by adding a 10% bonus.
⦿  Retrieve employees with a salary greater than ₹50000 and hired before 2016-01-01.
⦿  List employees who are Data Analyst or Data Scientist.
Other Operators:
⦿  Find the employee whose designation is missing and fill it with "Data Scientist".
⦿  List employees whose department_id is either 1, 3, 4, 9, or 12.
⦿  Identify employees whose salary is not between 50000 and 80000.
⦿  Find employees whose name starts with a vowel.
⦿  Display the employee names that have 'sh' as the second and third characters.

### Sorting and Grouping Data:
ORDER BY:
⦿  List employees hired after January 1, 2019, ordered by hire date.
⦿  Find employees sorted by department ID in ascending order and salary in descending order.
LIMIT:
⦿  Retrieve the top 10 highest paid employees from the Employees table.
⦿  Display the first 5 employees hired in the year 2018.
Aggregate Functions:
⦿  Calculate the sum of all salaries in the Finance department.
⦿  Find the minimum age among all employees.
GROUP BY:
⦿  List the maximum salary for each location.
⦿  Calculate the average salary for each designation containing the word 'Analyst'.
HAVING:
⦿  Find departments with less than 3 employees.
⦿  Find locations with female employees whose average age is below 30.

### Joins:
Inner Join:
⦿  List employee names, their designations, and department names where employees are assigned to a department.
Left Join:
⦿  List all departments along with the total number of employees in each department, including departments with no employees.
Right Join:
⦿  Display all locations along with the names of employees assigned to each location. If no employees are assigned to a location, display NULL for employee name.

### Functions:
1. Built-in Numeric Functions:
⦿  Find the average age of employees, rounded off to the nearest integer.
⦿  Retrieve all employee records including a bonus column, calculated as the square root of their salary rounded up to the nearest larger integer.
2. Built-in String Functions:
⦿  Extract the first three characters from the location names.
⦿  Concatenate employee names with their designations separated by a hyphen.

3. Built-in Date Time Functions:
⦿  Extract the year from the hire date of all employees.
⦿  Calculate the number of days between the hire date and the current date for each employee.
⦿  Format the hire date of employees to display in 'DD-MM-YYYY' format.
⦿  Find the 'employment_confirmation' date of each employee which is 3 months from their hire_date.
4. User-defined Functions:
⦿  Define a function to retrieve the employee count by location name. Find the employee count for the cities Bangalore and Hyderabad..

### Subqueries
1. Single-Row Subqueries:
⦿  Retrieve the details of employees with salaries greater than the average salary of all employees.
⦿  List the employee(s) with the highest salary.
⦿  Retrieve the details of employees who are working in the same department as the employee Arjun Kumar.
2. Multi-Row Subqueries:
⦿  Find the employees who work in departments with 'Development' in their name.

### Creating Stored Procedures
1. Stored Procedure with IN Parameter:
⦿  Define a stored procedure named GetEmployeesByDepartmentName that takes a department name as input and retrieves employees belonging to that department. Retrieve employee details of the departments 'IT' and 'Human Resources'.
2. Stored Procedure with OUT Parameter:
⦿  Create a stored procedure named FindEmployeeBirthYearByID that takes an employee ID as input and returns the employee's birth year. Retrieve the birth year of employees with the IDs 5004, 5018 and 5029.

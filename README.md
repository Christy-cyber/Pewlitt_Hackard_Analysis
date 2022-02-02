# Retirement Analysis for Pewlitt Hackard
## Overview and Deliverables
Many employees of Pewlitt_Hackard are beginning to retire given that they are reaching retirement age and the company recently offered an incentive package to employees who met certain criteria. The company recognizes that a retirement wave could potentially leaving numerous positions vacant throughout the company. In order to determine which positions will need to be filled when anticipated retirements occur, the following deliverables were requested:  

1) Determine number of retiring employees by title
2) Identify employees who are eligible to participate in a mentorship program

## Resources
- Data Sources: employees.csv; titles.csv; dept_emp.csv; departments.csv; dept_manager.csv; salaries.csv
- Software and Programming Languages: pgAdmin 4; PostgreSQL 11; VSCode v. 1.63.2

## Results
- There are 72,458 current employees who are eligible for retirement (Table 1) (based on unique_titles.csv and retiring_titles.csv).
- 50% of eligible retirees are engineers, including 'Senior Engineer' (25,916), 'Engineer' (9,285), and 'Assistant Engineer' (1,090) titles (Table 1) (based on retiring_titles.csv).
- 45% of eligible retirees are staff, including 'Senior Staff' (24,926) and 'Staff' (7,636) titles (Table 1) (based on retiring_titles.csv).
- The fewest number of eligible retirees represent 'Managers' (2) (Table 1) (based on retiring_titles.csv).
- There are 1,549 employees eligible to participate in the mentorship program (Table 2) (based on mentorship_eligibility.csv).

## Summary
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- There are 72,456 eligible retirees across seven job titles (Table 1).  There are currently 240,124 employees at Pewlitt_Hackard (Table 3), so this represents a 30% turn-over of employees in near future during a short time.  

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees?
- Overall, there are are not enough employees to mentor new hires within their own job title.  There are not enough qualified 'Engineer' mentors available for the next generation of engineer hires (Table 2).  There are 889 eligible engineering employees total who are available to mentor 36,291 new engineer hires (Table 1), assuming that these vacancies occur within the next year.  This would require each mentor to be assigned to approximately 41 new engineer hires, which would not be possible.  Likewise, there are 724 'Senior Staff' and 'Staff' members who are qualified mentors. Approximately 37 new hires would be assigned to staff mentors if all anticipated vacancies were filled in the 'Staff' title category. Similar findings are true for 'Technique Leader'. The company would benefit from hiring new engineers and staff before retirements occur so that soon to be retirees can act as mentors within their disciplines before they separate from the company and institutional memory is lost.

Table 1.  Number of retirees by job title.

![retiring_titles](https://user-images.githubusercontent.com/95387273/152226697-638c1f9e-4dd4-4a98-a1c9-e7dc9792ccc9.png)

Table 2. Number of mentors by job title.

![mentor_by_title](https://user-images.githubusercontent.com/95387273/152231554-e0bd1e20-4a80-4762-8216-5b3c22c17b47.png)

Table 3. Total number of current Pewlitt-Hackard employees, with code included.

![total_current_employees](https://user-images.githubusercontent.com/95387273/152235967-b94b92be-4c2c-4835-beb0-5df6a59b4bdd.png)






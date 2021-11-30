# Pewlett-Hackard-Analysis

## Project Overview

The purpose of this project is to generate alist of all empoyees eligible for a retirement package at Perlett Hackard and determine which positions will need to be filled in the next few years.



## Resources

* [departments.csv](https://github.com/emeryvarga/Pewlett-Hackard-Analysis/blob/fb451b0afe0bbc46a729167bc21af12271859ac7/Data/Extra%20Tables/departments.csv)
* [dept_emp.csv](https://github.com/emeryvarga/Pewlett-Hackard-Analysis/blob/fb451b0afe0bbc46a729167bc21af12271859ac7/Data/Extra%20Tables/dept_emp.csv)
* [dept_manager.csv](https://github.com/emeryvarga/Pewlett-Hackard-Analysis/blob/fb451b0afe0bbc46a729167bc21af12271859ac7/Data/Extra%20Tables/dept_manager.csv)
* [employees.csv](https://github.com/emeryvarga/Pewlett-Hackard-Analysis/blob/fb451b0afe0bbc46a729167bc21af12271859ac7/Data/Extra%20Tables/employees.csv)
* [salaries.csv](https://github.com/emeryvarga/Pewlett-Hackard-Analysis/blob/fbhttps://github.com/emeryvarga/Pewlett-Hackard-Analysis/blob/fb451b0afe0bbc46a729167bc21af12271859ac7/Data/Extra%20Tables/titles.csv)

## Development Environment

* PostgreSQL

## Results

*Table 1* lists employees eligible for retirment by filtering the data for birth dates beween January 1, 1952 and December 31, 1955. The table pulls employee number, first name, and last name from the Employees table, and pulls the title from the Titles table. Furthermore, it uses the `DISTINCT ON` statement to fetch the most recent title of each employee by sorting the `to_date` column in descending order.


| emp_no | first_name	| last_name |	title |
| ------ | ---------- | --------- | ----- |
|10001|Georgi|Facello|Senior Engineer|
|10004|Chirstian|Koblick|Senior Engineer|
|10005|Kyoichi|Maliniak|Senior Staff|
|10006|Anneke|Preusig|Senior Engineer|
|10009|Sumant|Peac|Senior Engineer|
|10011|Mary|Sluis|Staff|
|10018|Kazuhide|Peha|Senior Engineer|
|10019|Lillian|Haddadi|Staff|
|10020|Mayuko|Warwick|Engineer|
|10022|Shahaf|Famili|Engineer|

**Table 1: Unique Titles**

*Table 2* uses the `COUNT` function to list the number of titles filled by employees who are retiring. This table helps Perlett Hackard determine which positions will need to be filled within the next few years.

|count|title|
| ------ | ---------- |
|29414|Senior Engineer|
|28254|Senior Staff|
|14222|Engineer|
|12243|Staff|
|4502|Technique Leader|
|1761|Assistant Engineer|
|2|Manager|

**Table 2: Retiring Titles**

## Summary

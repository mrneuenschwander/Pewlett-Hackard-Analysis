# Module 7: SQL and Database Challenge 
Pewlett-Hackard: The Silver Tsunami

## Overview of Project

This project was intended to give our SQL learning a shoulder-fired start. It covers database creation, management of tables, sorting values and duplicates using UNIQUE ON statements, creating ERDs to tie everything together, Primary and Foreign key relations, and more. 

The Client, Pewlett-Hackard, will have a large number of retiring employees in the next few years. This project and associated deliverables break down the demographics by department, role, and time with the company. They are collated into individual CSVs that may be used for reporting needs and creation or further-refined tables within the Employee DB created for this project.

### Purpose

This project encompassed creation and sorting of a database from scratch, and as such there was much to do. The Client had no preexisting data management system, only CSVs holding all of their employee information, and so we needed to create a DB to work out of. Using pgAdmin 4 running PostgreSQL 15, all available data was imported in and made malleable for the purposes of analysis, and modified to show only valid data (meaning the current iteration contains zero null values). Having established a workable dataset, I wrote new queries to search for the requested information and was able to generate the results that are in the section following.

## Results

- The highest concentration of retirees are going to come from the population of Senior Staff, and Senior Engineering staff. This may lead to slowing at the top as the positions are filled with somewhat equivalent experience. 

<img width="172" alt="Screenshot 2022-12-18 at 12 24 31 PM" src="https://user-images.githubusercontent.com/116296092/208317078-75f78ca5-e6f2-429e-8200-ceb8499f08ba.png">

- The Mentor Program proposed will assist in relieving some of the pressure, and allows pertinent and immediate job information to be passed along to the next staff generation as they're onboarded with the company. There are many current staff members thate are eligible for mentoring.

- Depending on the needs of New Hires, the 'Mentorship Eligibility' CSV can be used to persistently keep track of how many employees are still eligible for mentoring as they either age out or leave the company. Because it's a dependent table, if the Mentor guidelines change at any point the query is easy to modify as to reflect the new data. All queries function similar to this, but with regards specifically to mentoring it will likely need to be updated annually or more frequently as time inexorably marches on, and the mentor program entry floor changes by at least one year.

![Screenshot 2022-12-18 at 12 35 49 PM](https://user-images.githubusercontent.com/116296092/208317087-9d9602c8-0673-41c2-8e57-f848b35833c3.png)

- The 'Unique Titles' CSV allows management to vett it for their staff members specifically and at will as they stand in their departments now, which allows for more focused and personalized send-off procedures at the HR level, if so desired. It can also be individually worked with to drill down into batches of employees with similar start dates, to better anticipate and handle Workforce Management issues if they should and as they arise.

## Analysis

Two questions specifically are at the core of the project, and are as follows:
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

The first is easily - if bluntly - answered, in two parts. First, the beginning will be relatively easy to handle. Not too many positions vacating at once, healthy pool of candidates to choose from as replacements, and that's assuming the market is good. The second part is where it gets tricky, because the total count of roles being vacated total is 72,458 at it's zenith. That number will only go up as more and more employees become eligible to retire. That brings us to the second question:

There are a great many qualified and retirement-ready employees that are eligible for the mentorship program, but that number is woefully inadequate when compared with the total population of retirees across the board. Of the 72,458 retirees, *there are only 1,549 eligible employees* for mentorship. This can be immediately rectified by re-examining the qualifications for mentorship, and expanding the available pool significantly. If that is not possible, there will be significant growing pains.

Two additional queries to those already created could include a diversity search to make sure that qualifications are being met as positions are filled, and additionally allowing for bragging rights as it relates to a strongly diverse work environment which could attract a wider range of applicants down the line, further assisting in role-filling efforts; the other a query that shows in real time what the working needs of the departments are, how close they are to meeting those needs, and what processes are in place i.e. that Department's mentor pool, how many retirees they are expecting per year, inbound applicant flow, the timing of departures, etc. This would require some additional data, but it's information that is already present in an HR system and just needs to be loaded into the database.

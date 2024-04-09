************************************************************************
**                        Module 9 Challenge                          **
**                                                                    **
**  Background: It’s been two weeks since I was hired as a new data   **
**  engineer at Pewlett Hackard (a fictional company). My first       **
**  major task is to do a research project about people whom the      **
**  company employed during the 1980s and 1990s. All that remains of  **
**  the employee database from that period are six CSV files.         **
**                                                                    **
**  For this project, you’ll design the tables to hold the data from  **
**  the CSV files, import the CSV files into a SQL database, and then **
**  answer questions about the data. That is, you’ll perform data     **
**  modeling, data engineering, and data analysis, respectively.      **
**                                                                    **
**  1. I created an Entity Relationship Diagram (ERD) using QuickDB   **
**     https://www.quickdatabasediagrams.com/  My diagram is in the   **
**     file, "EmployeeSQL_ERD.PNG"                                    **
**                                                                    **
**  2. After examining the source data, I created tables using SQL    **
**     via PGAdmin 4                                                  **
**     Note: There are two tables that have composite primary keys,   **
**     dept_manager and dept_emp. The SQL code I used to create       **
**     the composite keys appears to be correct (and the LA I contac- **
**     ted confirmed this. Within PGAdmin 4, however, the             **
**     contstraints object (?) doesn't accurately reflect this. I sus-**
**     pect this is a quirk within PGAdmin 4. Regardless, my code ran **
**     error free.                                                    **
**     The schemata can be found in the file,                         **
**     "employeeSQL_schemata.sql"                                     **
**                                                                    **
**  3. I created and ran several queries to answer the list of ques-  **
**     tions stated in the challenge. These queries can be found in   **
**     the file, "employeeSQL_queries.sql"                            **
**                                                                    **
************************************************************************
# Covid_data_Mysql
Analyzing covid data using MySQL
Table of Contents
Introduction
Data Acquisition
Data Storage with MySQL
Data Manipulation with DDL and DML
Data Analysis and Insights
Data Visualization
Conclusion
References
1. Introduction:
The COVID-19 pandemic has underscored the importance of data-driven decision-making. This documentation outlines the process of handling and analyzing COVID-19 data using the MySQL database management system. Specifically, we will focus on the management and analysis of data from two Excel sheets: "Vaccinations" and "COVID Deaths."

2. Data Acquisition:
The data for this project was acquired from external sources, specifically Excel sheets containing COVID-19 vaccination and death records. The data was cleaned and prepared for import into MySQL.

3. Data Storage with MySQL:
3.1 Data Definition Language (DDL):
CREATE TABLE: Two tables were created - "Vaccinations" and "COVID Deaths" - to store data. These tables were designed with appropriate columns and data types.
ALTER TABLE: As new data fields emerged, table structures were modified accordingly to accommodate the changes.
4. Data Manipulation with DDL and DML:
4.1 Data Manipulation Language (DML):
INSERT: Daily vaccination and death records were added to their respective tables.
UPDATE: Updates were applied to rectify data entry errors.
DELETE: Irrelevant or erroneous data was removed.
SELECT: Data was retrieved and filtered using SELECT for analysis.
5. Data Analysis and Insights:
The data was analyzed to draw insights, including:
Calculation of daily vaccination rates and mortality rates.
Identification of regions with high vaccination coverage but high death rates.
Detection of vaccination trends over time.
Correlation of vaccination rates with pandemic curves to assess impact.
6. Data Visualization: 
Data visualization tools were utilized to create informative graphs and charts, providing stakeholders with a clear understanding of the pandemic's progression and vaccination effectiveness.
7. Conclusion:
In an era where data is a vital tool in the fight against COVID-19, MySQL has proven to be a valuable asset. By effectively utilizing Data Definition Language (DDL), Data Manipulation Language (DML), and JOIN operations, we have structured, managed, and analyzed COVID-19 data, empowering us with insights to make informed decisions in this ongoing battle.

8. References:
MySQL Documentation
LinkedIn

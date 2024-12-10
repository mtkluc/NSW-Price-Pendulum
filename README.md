# Project 3 - Data Engineering Class Project
by Group3 : Natasha Elliott, Michael Luc, Rajani Muttumula, Lishi Cai

Libraries Used:
Pola.rs, Flask and glob

## 1. Scope and purpose of the project

As part of our classwork:

Our goal of this project was to utilise an ETL pipeline to review property sales data from the New South Wales Valuer General's website to have a better understanding of price change in different localities of NSW. 

We utilised the bulk annual data in .dat format, extracted the information, cleaned and manipulated the data by ensuring a unique ID key (uniqueSaleKey) and adding in the price per square meter metric.
Our database is divided into units and houses given these represent different markets, and may have differing value changes.
We grouped the information for the purpose of a Flask application so that users may query the price change per area over the year.

Some key considerations with our dataset; given the size of the dataset (~800,000 entries) we deleted data that was incomplete for the purposes
of our analysis. This may skew some results for areas with small sales volumes, but these areas are very hard to accurately guage regardless.
As such using the Flask tool is most appropriate for high volume sales areas over the last three years over the smaller regional towns.

## 2. Instructions on how to use and interact with the project

We have provided .csv files for each step, which can be downloaded and uploaded into pandas or pola.rs for further interaction.
The Flask app requires you to run app.py and ensure the file structure remains the same. 
It is then accessible locally.

![Proj3 sshot1](https://github.com/user-attachments/assets/de68049f-30ad-4a60-b595-88dba9029d1b)
![Screenshot 2024-12-09 210709](https://github.com/user-attachments/assets/1187530b-2242-42a6-be5d-23f770a0967c)

## 3. Documentation of the database used and why (e.g. benefits of SQL or NoSQL for this project)

Given the size and complexity of our database, as well as incomplete entries on the NSW Valuer General's website/.dat files
it was easier to use a NoSQL database to ensure all the data was captured. 

## 4. ETL workflow with diagrams or ERD

![ELT FLOWCHART](https://github.com/user-attachments/assets/3886d70c-55d7-4e68-a60f-216dfd980dd2)


## 5. Summarising efforts for ethical considerations made in the project


This project utilized data from the NSW Valuer General bulk property data set, licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) license.
Copyright © 2024 NSW Valuer General. All rights reserved. 

For more information see:
https://valuation.property.nsw.gov.au/embed/propertySalesInformation
https://creativecommons.org/licenses/by-nc-nd/4.0/

We ensured that our project utilised publically available data. As part of this dataset, home addresses are included and we have taken steps to remove this information. 
Our project abides by the Creative Commons Licence as this remains a non commercial project, where only data clean up and very limited transformation (price per sq m) has been calculated to allow for comparison
metrics. This project has been completed as part of an education project as part of the Monash edX Data Visualisation course.

## 6. References for the data source(s)

https://valuation.property.nsw.gov.au/embed/propertySalesInformation

## 7. References for any code used that is not your own
Code designed and developed by team, assisted by ChatGPT




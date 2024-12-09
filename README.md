# Project 3 - Data Engineering Class Project
by Group3 : Natasha Elliott, Michael Luc, Rajani Muttumula, Lishi Cai

Libraries Used:
Pola.rs, Flask and glob

## 1. Scope and purpose of the project

As part of our classwork:

Our goal of this project was to utilise an ETL pipeline to review property sales data from the New South Wales Valuer General's website
to have a better understanding of price change in different localities of NSW. We utilised the bulk annual data in .dat format, extracted
the information, cleaned and manipulated the data by ensuring a unique ID key (uniqueSaleKey) and adding in the price per square meter metric.
Our database is divided into units and houses given these represent different markets, and may have differing value changes.
We grouped the information for the purpose of a Flask application so that users may query the price change per area over the year.

Some key considerations with our dataset; given the size of the dataset (~800,000 entries) we deleted data that was incomplete for the purposes
of our analysis. This may skew some results for areas with small sales volumes, but these areas are very hard to accurately guage regardless.
As such using the Flask tool is most appropriate for high volume sales areas over the last three years over the smaller regional towns.

Ethical considerations 
include ensuring data privacy by anonymizing sensitive information, adhering to the platform’s terms 
of use, and documenting the data source transparently to promote responsible data usage. This work is covered by the Creative Commons.

## 2. Instructions on how to use and interact with the project

We have provided .csv files for each step, which can be downloaded and uploaded into pandas or pola.rs for further interaction.
The Flask app requires you to run app.py and ensure the file structure remains the same. 
It is then accessible locally.

## 3. Documentation of the database used and why (e.g. benefits of SQL or NoSQL for this project)

Given the size and complexity of our database, as well as incomplete entries on the NSW Valuer General's website/.dat files
it was easier to use a NoSQL database to ensure all the data was captured. 

## 4. ETL workflow with diagrams or ERD










## 5. Summarising efforts for ethical considerations made in the project

The original data was obtained from the NSW Valuer General's website and the data is accessible under the Creative Commons BY-NC-ND 4.0.
This work cannot be used for commercial purposes, and although transformation of the data in terms of cleaning/editing has occurred no material change
has occurred to the underlying data. NSW does not endorse the changes or our use of the data.

Otherwise, given the data includes addresses of homes that people own and live in, we have separated this from our main table and removed it from results for privacy.

For more information see:
https://valuation.property.nsw.gov.au/embed/propertySalesInformation
https://creativecommons.org/licenses/by-nc-nd/4.0/deed.en#ref-exception-or-limitation

## 6. References for the data source(s)

https://valuation.property.nsw.gov.au/embed/propertySalesInformation

## 7. References for any code used that is not your own
Code designed and developed by team, assisted by ChatGPT for Pola.rs




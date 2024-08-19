# Bike-share-analysis
Used SQL and power BI

This comprehensive analysis project aims to provide a detailed evaluation of a bike share program by examining key metrics including hourly revenue, profit margins, revenue trends, seasonal fluctuations, and rider demographics change in number of riders over time. The goal is to generate actionable insights that can enhance operational efficiency, optimize pricing strategies, and better cater to rider needs.

# DASHBOARD LINK:https://app.powerbi.com/view?r=eyJrIjoiZjY3OWMzYWUtYzdhYi00NTQ3LTgzNzEtZGEzODBmMzZjNzVhIiwidCI6IjM2MDA1NDJjLTNkYjktNDViMC04MWFlLTEwMWViYzg5ZmM3MCJ9&pageName=ReportSection102c1c5beb19ea68cb44

Link to dataset: https://www.kaggle.com/datasets/walmalki/toman-bike-share-dataset


Step 1 : Load data into Power BI Desktop, dataset from SQL server.

Step 2 : Open power query editor & in view tab under Data preview section, check "column distribution", "column quality" & "column profile" options.

- Step 3 : Also since by default, profile will be opened only for 1000 rows so you need to select "column profiling based on entire dataset".

- Step 4 : Right click on the dteday column then go to transform > Day > Day of week to create weeknumber column

- Step 5 : Right click on the dteday column then go to transform > Day > Name of week to create weekname column

- Step 6 : Go to table View and create Weekday/Weekend column using DAX

![DAX_1](https://github.com/user-attachments/assets/daf98a61-6a5a-42f8-a82d-7628ff52c8a6)

- Step 7 :Added a matrix visual to show revenue in weekdays and weekends w.r.t time of the Day

- Step 8 :Added a table visual to show no.. of riders by weather situation

- Step 9 :Added two new card visual that shows Profit, Revenue, Riders, Profit margin.
  
To add image go to format>image>chhose image from drop down and browse the image you want.

Profit margin DAX formula:
![DAX_2](https://github.com/user-attachments/assets/213afb1e-6f86-4351-8873-1ce829af2e33)

- Step 10: Added slicer visual to navigate between the years

- Step 11: Added Donut visual to show the percentage of  type of riders

- Step 12: Added Cluster bar chart to show revenue by season

- Step 13: Added Line and clustered column chart to show no..of riders, average of profit, average of revenue over time

- Step 13: Added table chart to show year over year growth percentage of riders.

DAX formulas:
![DAX_3](https://github.com/user-attachments/assets/0495f1b3-9268-4594-b3c1-b7b2341b75c2)

![DAX_4](https://github.com/user-attachments/assets/f6d14f80-5d7c-43a5-8ecd-b2654cec3754)

- Step 13: Added two buttons that navigates to pages that has line charts showing week over week percentage change in no..of riders.

DAX formula:
![DAX_5](https://github.com/user-attachments/assets/b4ba47a0-c00c-473c-893d-2f142105fa96)

![DAX_6](https://github.com/user-attachments/assets/0bd9775a-7e03-4222-aba8-71ab1885ab1d)


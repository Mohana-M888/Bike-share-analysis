USE BIKESHARE


ALTER TABLE BIKESHARE..SHARE_0
ADD Revenue DECIMAL(20,5)

UPDATE BIKESHARE..SHARE_0
SET revenue = (select riders*price from BIKESHARE..COSTTABLE where SHARE_0.yr=COSTTABLE.yr)

ALTER TABLE BIKESHARE..SHARE_1
ADD Revenue DECIMAL(20,5)

UPDATE BIKESHARE..SHARE_1
SET revenue = (select riders*price from BIKESHARE..COSTTABLE where SHARE_1.yr=COSTTABLE.yr)


ALTER TABLE BIKESHARE..SHARE_0
ADD Profit DECIMAL(20,5)

UPDATE BIKESHARE..SHARE_0
SET Profit = (select riders*price - COGS*riders from BIKESHARE..COSTTABLE where SHARE_0.yr=COSTTABLE.yr)

ALTER TABLE BIKESHARE..SHARE_1
ADD Profit DECIMAL(20,5)

UPDATE BIKESHARE..SHARE_1
SET Profit = (select riders*price - COGS*riders from BIKESHARE..COSTTABLE where SHARE_1.yr=COSTTABLE.yr)


WITH SHARECTE AS (
SELECT * FROM BIKESHARE..SHARE_0
UNION ALL
SELECT * FROM BIKESHARE..SHARE_1
)
SELECT 
dteday,season,weathersit,A.yr,weekday,hr,rider_type,riders,B.price as price_per_rider,B.COGS,revenue,profit  from 
SHARECTE A Left Join COSTTABLE B ON A.yr=B.yr




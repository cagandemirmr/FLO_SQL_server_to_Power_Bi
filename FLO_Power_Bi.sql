
-- CHECHKING CUSTOMER AMOUNT
select count(distinct Master_ID) TOTALCUSTOMERS from CUSTOMERS


--TOTAL AMOUNT OF SALES
Create View Total_Sales as select count(Master_ID) TOTAL_AMOUNT_OF_SALES,Last_order_date,YEAR(Last_order_date) year_,MONTH(Last_order_date) month_,sum(Customer_value_total_ever_offline)+sum(Customer_value_total_ever_online) 
REVENUE from CUSTOMERS group by Last_order_date

--Total Amount of Order Channel

Create view Channel as


select Order_channel,Last_order_date, sum(Order_num_total_ever_online) as Order_Count
from CUSTOMERS
group by Order_channel,Last_order_date

union 

select 'Offline' as Order_channel,Last_order_date, sum(Order_num_total_ever_offline) as Order_Count
from CUSTOMERS group by Last_order_date;

select sum(Order_num_total_ever_offline) as Offline_ from CUSTOMERS

--Average Revenue
select (sum(Customer_value_total_ever_offline)+sum(Customer_value_total_ever_online))/ count(Master_ID) AVG_REVENUE from CUSTOMERS

--Average Revenue base on last order channel

select Last_order_channel, (sum(Customer_value_total_ever_offline)+sum(Customer_value_total_ever_online))/ count(Master_ID) AVG_REVENUE from CUSTOMERS group by Last_order_channel

--TOTAL REVENUE Based on STORY TYPE

Create view Rev_Story as 
select  Store_type,(sum(Customer_value_total_ever_offline)+sum(Customer_value_total_ever_online)) TOTAL_REVENUE from CUSTOMERS group by Store_type



--AMOUNT OF SALES BY FIRST ORDER DATE
select First_order_date,count(Master_ID) TOTAL_AMOUNT_OF_SALES from CUSTOMERS group by First_order_date


--Create Date_View
create view Date_ as select Last_order_date,YEAR(Last_order_date) as year_,MONTH(Last_order_date) as Month_ from CUSTOMERS;


--Create Views Based on Store Types
drop view Stores
Create view Stores as select Store_type,Last_order_date,COUNT(*) count_Stores from CUSTOMERS group by Store_type,Last_order_date

--AVERAGE REVENUE BY OFFLINE CHANNEL
Drop view Offline_Sales
Create view Offline_Sales as select Last_order_date,Last_order_channel,YEAR(Last_order_date) as YEAR_,MONTH(Last_order_date) as MONTH_, avg(Customer_value_total_ever_offline ) OFFLINE_AVG
from CUSTOMERS 
where Last_order_channel='Offline'
group by Last_order_date,Last_order_channel,YEAR(Last_order_date),MONTH(Last_order_date)

--AVERAGE REVENUE BY ONLINE CHANNELS
Drop view Online_Sales 
Create view Online_Sales as select Last_order_date,Last_order_channel,YEAR(Last_order_date) as YEAR_,MONTH(Last_order_date) as MONTH_ ,avg(Customer_value_total_ever_online ) ONLINE_AVG
from CUSTOMERS 
where Last_order_channel <>'Offline'
group by Last_order_date,Last_order_channel,YEAR(Last_order_date),MONTH(Last_order_date)


--LAST 12 MONTHS
SELECT  YEAR(Last_order_date) YYYY,month(Last_order_date) MM,Interested_in_categories_12,max(SUM(Customer_value_total_ever_offline+Customer_value_total_ever_online)) sum_category,count(Interested_in_categories_12) count_i
FROM CUSTOMERS 
where YEAR(Last_order_date) ='2021' and month(Last_order_date)=5
GROUP BY YEAR(Last_order_date),month(Last_order_date),Interested_in_categories_12
ORDER BY YEAR(Last_order_date) desc,month(Last_order_date) DESC,count_i desc,SUM(Customer_value_total_ever_offline+Customer_value_total_ever_online) DESC


select DATEPART(YEAR,max(Last_order_date)) from CUSTOMERS


select convert(date,(DATEPART(YEAR,max(Last_order_date)) from CUSTOMERS

select max(Last_order_date) from CUSTOMERS


--Most selected Store Type
select top 1 Store_type,count(Store_type) Store_count from CUSTOMERS group by Store_type


-- Most Selected Category and TOTAL REVENUE by last order date
Create View Most_selected as 
select Last_order_date,Interested_in_categories_12,count(Interested_in_categories_12) COUNT_OF,avg(Customer_value_total_ever_offline+Customer_value_total_ever_online) TOTALREVENUES
from CUSTOMERS group by Last_order_date,Interested_in_categories_12



--Top 1 in Most sales
select top 1  Master_ID,sum(Order_num_total_ever_offline+Order_num_total_ever_online) count_order,avg(Customer_value_total_ever_offline) AVG_OFFLINE,avg(Customer_value_total_ever_online) AVG_ONLINE,avg(Customer_value_total_ever_online)+avg(Customer_value_total_ever_offline) TOTALAVERAGE
from CUSTOMERS group by Master_ID
order by sum(Order_num_total_ever_offline+Order_num_total_ever_online) desc,sum(Customer_value_total_ever_offline+Customer_value_total_ever_online) desc

--DAY FREQUENCY IN SALES

Create view DayFreq as
select  Master_ID,DATEDIFF(DAY,First_order_date,Last_order_date) DIFDAYS,sum(Order_num_total_ever_online+Order_num_total_ever_offline) FREQUENCY,avg(Customer_value_total_ever_online)+avg(Customer_value_total_ever_offline) TOTALAVERAGE,
DATEDIFF(DAY,First_order_date,Last_order_date)/sum(Order_num_total_ever_online+Order_num_total_ever_offline) DAY_FREQUENCY
from CUSTOMERS group by Master_ID,DATEDIFF(DAY,First_order_date,Last_order_date)


--TOP 1 Customer by TOTAL REVENUE
Create View Best_Customer as
select top 1 Master_ID,Last_order_channel,Customer_value_total_ever_offline+Customer_value_total_ever_online TOTAL
from CUSTOMERS group by Last_order_channel,Master_ID , Customer_value_total_ever_offline+Customer_value_total_ever_online



--Last sales Customer ID
Create view Last_Sales as
select Master_ID,Last_order_date from CUSTOMERS 
group by Master_ID,Last_order_date
having Last_order_date = (select min(Last_order_date) from CUSTOMERS)






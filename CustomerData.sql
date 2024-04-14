select * from customerData;

-- Number of Customers
select count(distinct id) Total_customers from customerData;

-- Total income and Total purchase
select sum(income) Total_income, sum(purchase_amount) Total_purchase
from customerData;

-- number of customers by gender
select gender, count(*) as NumberofCustomers
from customerData
group by gender
order by 2;

-- number of customers by education
select education, count(*) as NumberofCustomers
from customerData
group by education
order by 2;

-- number of customers by region
select region, count(*) as NumberofCustomers
from customerData
group by region
order by 2;

-- Number of customers by age group
select 
case 
	when age < 18 then 'under_18'
	when age between 18 and 35 then '18-35'
	when age > 35 then '35plus'
	end as age_group,
	count(*) as NumberofCustomers
from customerData
group by case 
	when age < 18 then 'under_18'
	when age between 18 and 35 then '18-35'
	when age > 35 then '35plus'
	end
order by age_group;


	-- Distinct product category
	select distinct product_category 
	from customerData;

-- Total purchase of each product category
select distinct product_category, 
sum(purchase_amount) Total_purchase 
from customerData
group by product_category
order by Total_purchase desc;


-- Spending habit by gender income
select gender , sum(purchase_amount) as total_purchase, 
sum(income) as total_income
from customerData
group by gender
order by total_purchase desc;

-- Spending habit by education income
select education , sum(purchase_amount)as total_purchase, 
sum(income) as total_income
from customerData
group by education
order by total_purchase desc;

-- Spending habit by  region income
select region , sum(purchase_amount)as total_purchase, 
sum(income) as total_income
from customerData
group by region
order by total_purchase desc;

-- spending habit by various age groups income
select 
case 
	when age < 18 then 'under_18'
	when age between 18 and 35 then '18-35'
	when age > 35 then '35plus'
	end as age_group,
	sum(purchase_amount) as total_purchase,
	sum(income) as total_income
from customerData
group by case 
	when age < 18 then 'under_18'
	when age between 18 and 35 then '18-35'
	when age > 35 then '35plus'
	end
order by age_group;

-- Total Purchase by promotion usage
select promotion_usage, 
count(*) Total_customers, sum(purchase_amount) totalPurchase
from customerData
group by promotion_usage
order by totalPurchase;

-- Standardize promotion usage
select
	case
		when promotion_usage = 0 then 'No'
		when promotion_usage = 1 then 'Yes'
		end as newPromotionUsage,
		count(*) as NumofCustomers
		from customerData
		group by promotion_usage;

-- spending habit by product category purchases among education category - college
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where education = 'college'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among education category -masters
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where education = 'masters'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among education category - HighSchool
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where education = 'HighSchool'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among education category -Bachelor
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where education = 'Bachelor'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among gender category -Male
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where gender = 'Male'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among gender category -Female
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where gender = 'Female'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among region category -North
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where region = 'North'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among region category -South
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where region = 'South'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among region category -West
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where region = 'West'
group by product_category
order by totalPurchase desc;

-- spending habit by product category purchases among region category -East
select product_category,
sum(purchase_amount) as totalPurchase
from customerData
where region = 'East'
group by product_category
order by totalPurchase desc;

-- spending habit on products by age groups below 18
select product_category, sum(purchase_amount) Total_purchase
from customerData
where age < 18
group by product_category
order by Total_purchase desc;

-- spending habit on products by age groups between 18 and 35
select product_category, sum(purchase_amount) Total_purchase
from customerData
where age between 18 and 35
group by product_category
order by Total_purchase desc;

-- spending habit on products by age groups above 35
select product_category, sum(purchase_amount) Total_purchase
from customerData
where age > 35
group by product_category
order by Total_purchase desc;


-- Testing...


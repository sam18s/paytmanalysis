create database paytm_epurchase;
use paytm_epurchase;

select * from paytm;

-- 1. What does the "Category_Grouped" column represent, and how many unique categories are there?
select Category_Grouped, count(Category_Grouped)
from paytm
group by Category_Grouped;

-- 2. Can you list the top 5 shipping cities in terms of the number of orders?
select Shipping_city
from paytm
order by Quantity desc limit 5 ;

-- 3. Show me a table with all the data for products that belong to the "Electronics" category.
select *
from paytm 
where Category = "Electronics" ;

-- 4. Filter the data to show only rows with a "Sale_Flag" of 'Yes'.
select *
from paytm 
where Sale_Flag = 'On Sale' ;

-- 5. Sort the data by "Item_Price" in descending order. What is the most expensive item?
select Item_Price
from paytm
order by Item_Price DESC LIMIT 1;

-- 6. Apply conditional formatting to highlight all products with a "Special_Price_effective" value below $50 in red.
select Special_Price_effective 
from paytm
where Special_Price_effective < 50;

-- 7. find the total sales value for each category.
select Category, count(Item_Price)
from paytm
group by Category;

-- 8. Create a bar chart to visualize the total sales for each category.
select Category, count(Item_Price)
from paytm
group by Category;

-- 9. Create a pie chart to show the distribution of products in the "Family" category.
select Family, count(Family) AS count
from paytm
group by Family;

-- 10. Ensure that the "Payment_Method" column only contains valid payment methods.
select Payment_Method, count(Payment_Method) as count
from paytm
group by Payment_Method;

-- 11. Calculate the average "Quantity" sold for products in the "Clothing" category, grouped by "Product_Gender."
select Product_Gender,avg(Quantity)
from paytm
group by Product_Gender;

-- 12. Find the top 5 products with the highest "Value_CM1" and "Value_CM2" ratios. Create a chart to visualize this data.
select Value_CM1,Value_CM2
from paytm
order by Value_CM1 and Value_CM2 desc limit 5;

-- 13. Identify the top 3 "Class" categories with the highest total sales. Create a stacked bar chart to represent this data.
select Class, COUNT(Item_Price) as count
from paytm
group by Class
order by COUNT(Item_Price) desc 
limit 4;

-- 14.retrieve the "Color" of a product with a specific "Item_NM."
select Color,Item_NM
from paytm;

-- 15. Calculate the total "coupon_money_effective" and "Coupon_Percentage" for products in the "Electronics" category.
select COUNT(coupon_money_effective), COUNT(Coupon_Percentage)
from paytm
where Category = 'Electronics';

-- 16. Calculate the top 5 shipping cities.
SELECT Shipping_city,count(Shipping_city) as count
FROM paytm
group by Shipping_city
order by count desc limit 5;

-- 17. Calculate the total sales for each "Segment" and the relationship between "Item_Price" and "Quantity" in this data.
select Segment, count(Item_Price)
from paytm
group by Segment;

select Quantity, count(Item_Price)
from paytm
group by Quantity;

-- 18. Use the AVERAGEIFS function to find the average "Item_Price" for products that have a "Sale_Flag" of 'Yes.'
SELECT AVG(CASE WHEN Sale_Flag = 'On Sale' THEN Item_Price ELSE NULL END) AS AverageItemPrice
FROM paytm;

-- 19. Identify products with a "Paid_pr" higher than the average in their respective "Family" and "Brand" groups.
select Family,Brand,avg(Paid_pr)
from paytm
group by Family,Brand;

-- 20.The total sales for each "Color" within the "Clothing" category and use conditional formatting to highlight the highest sales.
select Color, count(Item_Price)
from paytm
group by Color;




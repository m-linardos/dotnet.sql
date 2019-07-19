--USING DB: CustomerOrderDb
--Homework: 07/18/19


/* 
1. Select all customers from Ohio and display all columns
*/

select * 
from CUSTOMERS
where STATE = 'OH';

select * 
from CUSTOMERS
where STATE like 'O%';

/*
2. Select all products where the price is less than $50 and display all columns
*/

select * 
from Products
where Price < 50;

/*
3. Select all the orders for customer 1029 and display all columns
*/

select * 
from Orders
where CustomerId = 1029;


/*
4. Select order with id of 2022 displaying:
    a. Order Date
    b. Customer name
    c. Customer city
    d. Customer state
    e. All the OrderLines for that order
*/

select o.Date, c.Name, c.City, c.State
from Orders o
join Customers c
on o.CustomerId = c.Id
join OrderLines ol 
on o.id = ol.OrderId
where o.Id = 2022;


/*
5. Select detail of order 2031 displaying:
    a. Order Id
    b. Customer name
    c. OrderLine Product name
    d. OrderLine Quantity
    e. OrderLine Product Price
*/

select o.id, c.Name, ol.ProductId, ol.Quantity, p.Price
from Orders o
join Customers c
on o.CustomerId = c.Id
join OrderLines ol 
on o.id = ol.OrderId
join Products p
on ol.ProductId = p.id
where o.Id = 2031;






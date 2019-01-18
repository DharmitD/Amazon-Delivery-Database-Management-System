-- DML queries
--1
Select product_id, product_name, category_name, to_char(product_price, '$999.99') as Price, product_description, product_availability
from Products 
Join Product_category on Products.category_id=Product_category.category_id
where Product_category.category_name = 'Computers' OR Product_category.category_name = 'Electronics' AND Products.product_price<31


--2
Select product_id, no_of_items_sold  from Product_Seller
where no_of_items_sold<12 and sold_date>=to_date('01-Nov-2018','DD-MM-YYYY')

--3

select Customer.cust_name, Cust_address.street_no, Street_name.street_name, city.city_name, state.state_name, Zipcode.zipcode
from Orders
join Customer on Orders.cust_id=customer.cust_id
join Cust_address on Customer.cust_addr_id=Cust_address.cust_addr_id
join Street_name on Cust_address.Street_name=Street_name.Street_name
join Zipcode on Cust_address.Zipcode=Zipcode.Zipcode
join city on Zipcode.city_id=city.city_id
join state on Zipcode.state_id=state.state_id
where Product_id IN(Select product_id from Orders group by product_id having count(product_id)>2)


commit

--4

Select Product_name
from Product_Seller
Join Products on Product_Seller.Product_id=Products.Product_id
where no_of_items_sold IN (Select max(no_of_items_sold) from Product_Seller 
                            Join Products on Product_Seller.Product_id=Products.Product_id 
                            where category_id=301) OR no_of_items_sold IN (Select max(no_of_items_sold) from Product_Seller 
                                                                            Join Products on Product_Seller.Product_id=Products.Product_id 
                                                                            where category_id=308) OR no_of_items_sold IN (Select max(no_of_items_sold) from Product_Seller 
                                                                                                                            Join Products on Product_Seller.Product_id=Products.Product_id 
                                                                                                                            where category_id=302)
                                                                                                                              
--5

CREATE OR REPLACE PROCEDURE ADD_PRODUCTS( 
pro_id_arg IN DECIMAL,
pro_name_arg IN VARCHAR, 
pro_price_arg IN DECIMAL,
pro_desc_arg IN VARCHAR,
pro_ava_arg IN VARCHAR,
cat_id_arg IN DECIMAL) 
IS 
BEGIN
INSERT INTO PRODUCTS
(product_id,product_name,product_price,product_description,product_availability,category_id)
 VALUES(pro_id_arg,pro_name_arg,pro_price_arg,pro_desc_arg,pro_ava_arg,cat_id_arg);
END;

EXECUTE ADD_PRODUCTS(411,'bumblebee', 5, 'toy', 'available', 305)
EXECUTE ADD_PRODUCTS(412,'adidas shoes', 67, 'shoes', 'available', 306)

select * from products where product_id=411 or product_id=412

commit

--6
CREATE OR REPLACE PROCEDURE UPDATE_PRODUCTS( 
pro_id_arg IN DECIMAL,
pro_name_arg IN VARCHAR, 
pro_price_arg IN DECIMAL,
pro_desc_arg IN VARCHAR,
pro_ava_arg IN VARCHAR,
cat_id_arg IN DECIMAL) 
IS 
BEGIN
UPDATE PRODUCTS
SET product_name=pro_name_arg
WHERE product_id=pro_id_arg;
END;

EXECUTE UPDATE_PRODUCTS(411,'barbie', 5, 'toy', 'available', 305)
EXECUTE UPDATE_PRODUCTS(407,'instapot', 99, 'insta pot pressure cooker', 'available', 308)

select * from products where product_id=407 or product_id=411

commit

--Index
create index cust_index on Customer(cust_name)


--7
Select cust_name, Product_name
from Orders
Join Product_Seller on Orders.Product_id=Product_Seller.Product_id
Join Products on Product_Seller.Product_id=Products.Product_id
Join Customer on Orders.cust_id=Customer.cust_id
where no_of_items_sold IN (Select max(no_of_items_sold) from Product_Seller 
                            Join Products on Product_Seller.Product_id=Products.Product_id
                            where category_id=301) OR no_of_items_sold IN (Select max(no_of_items_sold) from Product_Seller 
                                                                            Join Products on Product_Seller.Product_id=Products.Product_id 
                                                                            where category_id=308) OR no_of_items_sold IN (Select max(no_of_items_sold) from Product_Seller 
                                                                                                                            Join Products on Product_Seller.Product_id=Products.Product_id 
                                                                                                                            where category_id=302)
                                                                                                                            


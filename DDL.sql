--Seller
CREATE TABLE Seller (
seller_id DECIMAL(12) NOT NULL PRIMARY KEY,
album_name VARCHAR(255) NOT NULL,
seller_contact NUMERIC(20));

ALTER TABLE Seller
ADD(
seller_products_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_seller_product
FOREIGN KEY (seller_products_id)
REFERENCES Seller_products(seller_products_id)
);

ALTER TABLE Seller
RENAME COLUMN album_name TO seller_name;

--Shipping_Seller_Amazon
CREATE TABLE Shipping_seller_amazon (
shipping_id DECIMAL(12) NOT NULL PRIMARY KEY,
shipping_date DATE NOT NULL
);

ALTER TABLE Shipping_seller_amazon
ADD(
seller_products_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_seller_products
FOREIGN KEY (seller_products_id)
REFERENCES Seller_products(seller_products_id));

--Inventory
CREATE TABLE Inventory (
inventory_id DECIMAL(12) NOT NULL PRIMARY KEY,
no_of_items_available DECIMAL(12));

ALTER TABLE Inventory
ADD(
product_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_products
FOREIGN KEY (product_id)
REFERENCES products(product_id));

--Base_Shipping
CREATE TABLE Base_Shipping (
seller_id DECIMAL(12) NOT NULL,
shipping_id DECIMAL(12) NOT NULL,
inventory_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_seller
FOREIGN KEY (seller_id)
REFERENCES Seller(seller_id),
CONSTRAINT fk_Shipping_seller_amazon
FOREIGN KEY (shipping_id)
REFERENCES Shipping_seller_amazon(shipping_id),
CONSTRAINT fk_Inventory
FOREIGN KEY (inventory_id)
REFERENCES Inventory(inventory_id));

--Seller_Products
CREATE TABLE Seller_products (
seller_products_id DECIMAL(12) NOT NULL PRIMARY KEY,
prod_condition VARCHAR(255) NOT NULL,
no_of_units DECIMAL(12));   


--Products
CREATE TABLE Products (
product_id DECIMAL(12) NOT NULL PRIMARY KEY,
product_name VARCHAR(255) NOT NULL,
product_price DECIMAL(12,2) NOT NULL,
product_description VARCHAR(255),
product_availability VARCHAR(255) NOT NULL
);

ALTER TABLE Products
ADD(
category_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_category
FOREIGN KEY (category_id)
REFERENCES product_category(category_id));

--Product_category
CREATE TABLE Product_category (
category_id DECIMAL(12) NOT NULL PRIMARY KEY,
category_name VARCHAR(255) NOT NULL
);

--Product_seller
CREATE TABLE Product_seller (
seller_id DECIMAL(12) NOT NULL,
product_id DECIMAL(12) NOT NULL,
no_of_items_sold DECIMAL(12),
CONSTRAINT fk_product_seller
FOREIGN KEY (seller_id)
REFERENCES Seller(seller_id),
CONSTRAINT fk_Products
FOREIGN KEY (product_id)
REFERENCES Products(product_id)
);

ALTER TABLE PRODUCT_SELLER
ADD(
sold_date DATE NOT NULL
);

--Customer
CREATE TABLE Customer (
cust_id DECIMAL(12) NOT NULL PRIMARY KEY,
cust_name VARCHAR(255) NOT NULL,
shipping_speed VARCHAR(255)
);

ALTER TABLE Customer
ADD(
cust_addr_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_address
FOREIGN KEY (cust_addr_id)
REFERENCES cust_address(cust_addr_id));

--Cust_address
CREATE TABLE Cust_address (
cust_addr_id DECIMAL(12) NOT NULL PRIMARY KEY,
Street_no VARCHAR(255) NOT NULL
);

ALTER TABLE Cust_address
ADD(
street_name VARCHAR(255) NOT NULL,
zipcode DECIMAL(12) NOT NULL,
CONSTRAINT fk_street
FOREIGN KEY (street_name)
REFERENCES street_name(street_name),
CONSTRAINT zipcode
FOREIGN KEY (zipcode)
REFERENCES zipcode(zipcode));

--Street_name
CREATE TABLE Street_name (
street_name VARCHAR(255) NOT NULL PRIMARY KEY,
state_description VARCHAR(255) NOT NULL
);

ALTER TABLE Street_name
RENAME COLUMN state_description TO street_description;

--Zipcode
CREATE TABLE Zipcode (
zipcode DECIMAL(12) NOT NULL PRIMARY KEY
);

ALTER TABLE Zipcode
ADD(
city_id DECIMAL(12) NOT NULL,
state_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_city
FOREIGN KEY (city_id)
REFERENCES city(city_id),
CONSTRAINT fk_state
FOREIGN KEY (state_id)
REFERENCES state(state_id));

CREATE TABLE City (
city_id DECIMAL(12) NOT NULL PRIMARY KEY,
city_name VARCHAR(255) NOT NULL
);

CREATE TABLE State (
state_id DECIMAL(12) NOT NULL PRIMARY KEY,
state_name VARCHAR(255) NOT NULL
);

CREATE TABLE Orders (
order_id DECIMAL(12) NOT NULL PRIMARY KEY,
seller_id DECIMAL(12) NOT NULL,
cust_id DECIMAL(12) NOT NULL,
product_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_seller_order
FOREIGN KEY (seller_id)
REFERENCES Seller(seller_id),
CONSTRAINT fk_customer
FOREIGN KEY (cust_id)
REFERENCES Customer(cust_id),
CONSTRAINT fk_products_order
FOREIGN KEY (product_id)
REFERENCES Products(product_id));

CREATE TABLE Shipping_amazon_customer (
ship_id DECIMAL(12) NOT NULL PRIMARY KEY,
ship_date DATE NOT NULL,
inventory_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_Inventory_cust
FOREIGN KEY (inventory_id)
REFERENCES Inventory(inventory_id)
);

CREATE TABLE Packages (
package_id DECIMAL(12) NOT NULL PRIMARY KEY,
tracking_no DECIMAL(12) NOT NULL,
order_id DECIMAL(12) NOT NULL,
ship_id DECIMAL(12) NOT NULL,
cust_id DECIMAL(12) NOT NULL,
CONSTRAINT fk_order_package
FOREIGN KEY (order_id)
REFERENCES Orders(order_id),
CONSTRAINT fk_customer_package
FOREIGN KEY (cust_id)
REFERENCES Customer(cust_id),
CONSTRAINT fk_Shipping_amazon_customer
FOREIGN KEY (ship_id)
REFERENCES Shipping_amazon_customer(ship_id));


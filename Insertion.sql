INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (101, 'Ram', 8578392234, 1)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (102, 'Sham', 8579392234, 2)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (103, 'Tam', 8278392234, 3)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (104, 'Bam', 8578399234, 1)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (105, 'Sam', 8578390234, 4)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (106, 'Lam', 8577392234, 5)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (107, 'Dam', 8578392234, 6)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (108, 'Ham', 8578302234, 5)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (109, 'Kam', 8978392234, 7)
INSERT INTO Seller(seller_id,seller_name,seller_contact,SELLER_PRODUCTS_ID) VALUES (110, 'Nam', 8578392734, 8)


INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (201, CAST('03-Jul-2018' AS DATE), 1)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (202, CAST('04-Aug-2018' AS DATE), 2)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (203, CAST('05-Sep-2018' AS DATE), 3)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (204, CAST('02-Jun-2018' AS DATE), 1)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (205, CAST('03-Jul-2018' AS DATE), 4)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (206, CAST('06-Jul-2018' AS DATE), 5)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (207, CAST('09-Jun-2018' AS DATE), 6)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (208, CAST('10-May-2018' AS DATE), 5)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (209, CAST('08-Jul-2018' AS DATE), 7)
INSERT INTO Shipping_seller_amazon(shipping_id,shipping_date,SELLER_PRODUCTS_ID) VALUES (210, CAST('07-Aug-2018' AS DATE), 8)


INSERT INTO Inventory(inventory_id,product_id,no_of_items_available) VALUES (501,401,20);
INSERT INTO Inventory(inventory_id,product_id,no_of_items_available) VALUES (502,402,15);
INSERT INTO Inventory(inventory_id,product_id,no_of_items_available) VALUES (503,404,31);
INSERT INTO Inventory(inventory_id,product_id,no_of_items_available) VALUES (504,405,28);
INSERT INTO Inventory(inventory_id,product_id,no_of_items_available) VALUES (505,406,21);
INSERT INTO Inventory(inventory_id,product_id,no_of_items_available) VALUES (506,407,28);
INSERT INTO Inventory(inventory_id,product_id,no_of_items_available) VALUES (507,409,26);
INSERT INTO Inventory(inventory_id,product_id,no_of_items_available) VALUES (508,410,36);


NSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (101,201,501);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (102,202,502);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (103,203,503);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (104,204,501);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (105,205,504);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (106,206,505);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (107,207,506);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (108,208,505);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (109,209,507);
INSERT INTO base_shipping(seller_id,shipping_id,inventory_id) VALUES (110,210,508);


INSERT INTO Seller_products (seller_products_id, prod_condition, no_of_units) VALUES (1, 'new', 5)
INSERT INTO Seller_products (seller_products_id, prod_condition, no_of_units) VALUES (2, 'used', 4)
INSERT INTO Seller_products (seller_products_id, prod_condition, no_of_units) VALUES (3, 'used', 3)
INSERT INTO Seller_products (seller_products_id, prod_condition, no_of_units) VALUES (4, 'new', 5)
INSERT INTO Seller_products (seller_products_id, prod_condition, no_of_units) VALUES (5, 'new', 2)
INSERT INTO Seller_products (seller_products_id, prod_condition, no_of_units) VALUES (6, 'new', 7)
INSERT INTO Seller_products (seller_products_id, prod_condition, no_of_units) VALUES (7, 'used', 5)


NSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (401, 'HP680', 20, 'Laptop', 'available', 301);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (402, 'Dell380', 25, 'Laptop', 'available', 301);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (403, 'Pyjama', 20, 'Mens wear', 'not available', 303);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (404, 'Shaving Kit', 15, 'Mens accessories', 'available', 304);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (405, 'iphone8', 25, 'Mobile phone', 'available', 302);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (406, 'Anker powerhouse', 19, 'Power bank', 'available', 302);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (407, 'Ninja Pressure cooker', 99, 'Insta pot pressure cooker', 'available', 308);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (408, 'Barbie', 20, 'Toy', 'not available', 305);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (409, 'Amherest coffee maker', 120, 'coffee maker', 'available', 308);
INSERT INTO Products (product_id, product_name, product_price, product_description, product_availability, CATEGORY_ID)
VALUES (410, 'EPSON calculator', 90, 'Calculator', 'available', 302);


INSERT INTO Product_category (category_id, category_name) VALUES (301, 'Computers')
INSERT INTO Product_category (category_id, category_name) VALUES (302, 'Electronics')
INSERT INTO Product_category (category_id, category_name) VALUES (303, 'Clothing')
INSERT INTO Product_category (category_id, category_name) VALUES (304, 'Personal Care')
INSERT INTO Product_category (category_id, category_name) VALUES (305, 'Toys')
INSERT INTO Product_category (category_id, category_name) VALUES (306, 'Shoes')
INSERT INTO Product_category (category_id, category_name) VALUES (307, 'Furniture')
INSERT INTO Product_category (category_id, category_name) VALUES (308, 'Kitchen and Dining')


INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (101, 5, 401,CAST('01-Oct-2018' AS DATE) );
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (102, 6, 402,CAST('03-Oct-2018' AS DATE));
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (103, 4, 404,CAST('06-Oct-2018' AS DATE) );
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (104, 5, 401,CAST('13-Oct-2018' AS DATE));
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (105, 3, 405,CAST('21-Oct-2018' AS DATE));
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (106, 4, 406,CAST('01-Nov-2018' AS DATE));
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (107, 7, 407,CAST('03-Nov-2018' AS DATE));
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (108, 5, 406,CAST('06-Nov-2018' AS DATE));
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (109, 9, 409,CAST('13-Nov-2018' AS DATE));
INSERT INTO Product_seller (seller_id, no_of_items_sold, product_id, sold_date) VALUES (110, 20, 410,CAST('13-Nov-2018' AS DATE));


INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (901, 'Dalvi', '7 days', 801);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (902, 'Palvi', '1 day', 802);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (903, 'Jalvi', '3 days', 803);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (904, 'Lalvi', '3 days', 804);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (905, 'Halvi', '7 days', 805);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (906, 'Nalvi', '3 days', 806);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (907, 'Aalvi', '1 day', 807);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (908, 'Calvi', '3 days', 808);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (909, 'Valvi', '7 days', 809);
INSERT INTO customer(cust_id, cust_name, shipping_speed, cust_addr_id) VALUES (910, 'Zalvi', '3 days', 810);


INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (801, 1682, 'comm ave', 02135);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (802, 182, 'mass ave', 02144);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (803, 682, 'cambridge ave', 02188);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (804, 122, 'turn ave', 02136);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (805, 162, 'day street', 02124);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (806, 168, 'allston ave', 02835);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (807, 102, 'harvard ave', 02224);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (808, 178, 'Brighton ave', 02135);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (809, 189, 'elm ave', 02185);
INSERT INTO cust_address(cust_addr_id, street_no, Street_name, Zipcode) VALUES (810, 282, 'mattis ave', 02284);


INSERT INTO Street_name(street_name,street_description) VALUES ('comm ave','next to Park street');
INSERT INTO Street_name(street_name,street_description) VALUES ('mass ave','near elm street');
INSERT INTO Street_name(street_name,street_description) VALUES ('cambridge ave','next to Yolk street');
INSERT INTO Street_name(street_name,street_description) VALUES ('turn ave','next to Lexington');
INSERT INTO Street_name(street_name,street_description) VALUES ('day street','Davis Square');
INSERT INTO Street_name(street_name,street_description) VALUES ('allston ave','next to harvard street');
INSERT INTO Street_name(street_name,street_description) VALUES ('harvard ave','Near Whole foods');
INSERT INTO Street_name(street_name,street_description) VALUES ('Brighton ave','Packards corner');
INSERT INTO Street_name(street_name,street_description) VALUES ('elm ave','next to Day street');
INSERT INTO Street_name(street_name,street_description) VALUES ('mattis ave','Tempus');
INSERT INTO Street_name(street_name,street_description) VALUES ('nunc road','next to Park street');


INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02135, 701, 602);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02144, 702, 602);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02188, 703, 603);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02136, 704, 605);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02124, 705, 606);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02835, 706, 601);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02224, 707, 604);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02335, 708, 602);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02185, 709, 604);
INSERT INTO Zipcode(zipcode, city_id, state_id) VALUES (02284, 710, 606);


INSERT INTO city(city_id, city_name) VALUES (701, 'Brighton');
INSERT INTO city(city_id, city_name) VALUES (702, 'Somerville');
INSERT INTO city(city_id, city_name) VALUES (703, 'Chicago');
INSERT INTO city(city_id, city_name) VALUES (704, 'Sacramento');
INSERT INTO city(city_id, city_name) VALUES (705, 'Pheonix');
INSERT INTO city(city_id, city_name) VALUES (706, 'Dover');
INSERT INTO city(city_id, city_name) VALUES (707, 'Seattle');
INSERT INTO city(city_id, city_name) VALUES (708, 'Allston');
INSERT INTO city(city_id, city_name) VALUES (709, 'Vancover');
INSERT INTO city(city_id, city_name) VALUES (710, 'Mesa');


INSERT INTO state(state_id, state_name) VALUES (601, 'DE');
INSERT INTO state(state_id, state_name) VALUES (602, 'MA');
INSERT INTO state(state_id, state_name) VALUES (603, 'IL');
INSERT INTO state(state_id, state_name) VALUES (604, 'WA');
INSERT INTO state(state_id, state_name) VALUES (605, 'CA');
INSERT INTO state(state_id, state_name) VALUES (606, 'AZ');


INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1001,101,901,401 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1002,102,902,402 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1003,103,903,404 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1004,104,904,401 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1005,105,905,405 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1006,106,906,406 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1007,107,907,407 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1008,108,908,406 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1009,109,909,409 );
INSERT INTO Orders(order_id, seller_id, cust_id, product_id) VALUES (1010,110,910,410 );


NSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1201,CAST('03-Oct-2018' AS DATE),501 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1202,CAST('09-Oct-2018' AS DATE),502 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1203,CAST('13-Oct-2018' AS DATE),503 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1204,CAST('28-Oct-2018' AS DATE),501 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1205,CAST('31-Oct-2018' AS DATE),504 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1206,CAST('03-Nov-2018' AS DATE),505 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1207,CAST('05-Nov-2018' AS DATE),506 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1208,CAST('09-Nov-2018' AS DATE),505 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1209,CAST('18-Nov-2018' AS DATE),507 );
INSERT INTO shipping_amazon_customer(ship_id, ship_date,inventory_id) VALUES (1210,CAST('19-Nov-2018' AS DATE),508 );


INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1301,901,1001,5801,1201 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1302,902,1002,5802,1202 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1303,903,1003,5803,1203 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1304,904,1004,5804,1204 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1305,905,1005,5805,1205 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1306,906,1006,5806,1206 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1307,907,1007,5807,1207 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1308,908,1008,5808,1208 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1309,909,1009,5809,1209 );
INSERT INTO packages(package_id, cust_id,order_id, tracking_no, ship_id) VALUES (1310,910,1010,5810,1210 );

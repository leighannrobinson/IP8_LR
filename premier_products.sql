DROP DATABASE IF EXISTS premier_products;

CREATE DATABASE premier_products;

USE premier_products;

CREATE TABLE sales_rep
(sales_rep_num CHAR(2) PRIMARY KEY,
last_name CHAR(15),
first_name CHAR(15),
street CHAR(15),
city CHAR(15),
state CHAR(2),
zip CHAR(5),
commission DECIMAL(7,2),
rate DECIMAL(3,2) );

CREATE TABLE customer
(customer_num CHAR(3) PRIMARY KEY,
customer_name CHAR(35) NOT NULL,
street CHAR(15),
city CHAR(15),
state CHAR(2),
zip CHAR(5),
balance DECIMAL(8,2),
credit_limit DECIMAL(8,2),
sales_rep_num CHAR(2) );

CREATE TABLE orders
(order_num CHAR(5) PRIMARY KEY,
order_date DATETIME,
customer_num CHAR(3) );

CREATE TABLE part
(part_num CHAR(4) PRIMARY KEY,
part_description CHAR(15),
on_hand DECIMAL(4,0),
class CHAR(2),
warehouse CHAR(1),
price  DECIMAL(6,2) );

CREATE TABLE order_line
(order_num CHAR(5),
part_num CHAR(4),
num_ordered DECIMAL(3,0),
quoted_price DECIMAL(6,2),
PRIMARY KEY (order_num, part_num) );

INSERT INTO sales_rep
VALUES
('20','Kaiser','Valerie','624 Randall','Grove','FL','33321',20542.50,0.05);
INSERT INTO sales_rep
VALUES
('35','Hull','Richard','532 Jackson','Sheldon','FL','33553',39216.00,0.07);
INSERT INTO sales_rep
VALUES
('65','Perez','Juan','1626 Taylor','Fillmore','FL','33336',23487.00,0.05);
INSERT INTO customer
VALUES
('148','Al''s Appliance and Sport','2837 
Greenway','Fillmore','FL','33336',6550.00,7500.00,'20');
INSERT INTO customer
VALUES
('282','Brookings Direct','3827 
Devon','Grove','FL','33321',431.50,10000.00,'35');
INSERT INTO customer
VALUES
('356','Ferguson''s','382 
Wildwood','Northfield','FL','33146',5785.00,7500.00,'65');
INSERT INTO customer
VALUES
('408','The Everything Shop','1828 
Raven','Crystal','FL','33503',5285.25,5000.00,'35');
INSERT INTO customer
VALUES
('462','Bargains Galore','3829 
Central','Grove','FL','33321',3412.00,10000.00,'65');
INSERT INTO customer
VALUES
('524','Kline''s','838 
Ridgeland','Fillmore','FL','33336',12762.00,15000.00,'20');
INSERT INTO customer
VALUES
('608','Johnson''s Department Store','372 
Oxford','Sheldon','FL','33553',2106.00,10000.00,'65');
INSERT INTO customer
VALUES
('687','Lee''s Sport and Appliance','282 
Evergreen','Altonville','FL','32543',2851.00,5000.00,'35');
INSERT INTO customer
VALUES
('725','Deerfield''s Four Seasons','282 
Columbia','Sheldon','FL','33553',248.00,7500.00,'35');
INSERT INTO customer
VALUES
('842','All Season','28 Lakeview','Grove','FL','33321',8221.00,7500.00,'20');
INSERT INTO orders
VALUES
('21608','2010-10-20','148');
INSERT INTO orders
VALUES
('21610','2010-10-20','356');
INSERT INTO orders
VALUES
('21613','2010-10-21','408');
INSERT INTO orders
VALUES
('21614','2010-10-21','282');
INSERT INTO orders
VALUES
('21617','2010-10-23','608');
INSERT INTO orders
VALUES
('21619','2010-10-23','148');
INSERT INTO orders
VALUES
('21623','2010-10-23','608');
INSERT INTO part
VALUES
('AT94','Iron',50,'HW','3',24.95);
INSERT INTO part
VALUES
('BV06','Home Gym',45,'SG','2',794.95);
INSERT INTO part
VALUES
('CD52','Microwave Oven',32,'AP','1',165.00);
INSERT INTO part
VALUES
('DL71','Cordless Drill',21,'HW','3',129.95);
INSERT INTO part
VALUES
('DR93','Gas Range',8,'AP','2',495.00);
INSERT INTO part
VALUES
('DW11','Washer',12,'AP','3',399.99);
INSERT INTO part
VALUES
('FD21','Stand Mixer',22,'HW','3',159.95);
INSERT INTO part
VALUES
('KL62','Dryer',12,'AP','1',349.95);
INSERT INTO part
VALUES
('KT03','Dishwasher',8,'AP','3',595.00);
INSERT INTO part
VALUES
('KV29','Treadmill',9,'SG','2',1390.00);
INSERT INTO order_line
VALUES
('21608','AT94',11,21.95);
INSERT INTO order_line
VALUES
('21610','DR93',1,495.00);
INSERT INTO order_line
VALUES
('21610','DW11',1,399.99);
INSERT INTO order_line
VALUES
('21613','KL62',4,329.95);
INSERT INTO order_line
VALUES
('21614','KT03',2,595.00);
INSERT INTO order_line
VALUES
('21617','BV06',2,794.95);
INSERT INTO order_line
VALUES
('21617','CD52',4,150.00);
INSERT INTO order_line
VALUES
('21619','DR93',1,495.00);
INSERT INTO order_line
VALUES
('21623','KV29',2,1290.00);

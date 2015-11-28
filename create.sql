# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project2.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-27 18:32                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Products"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Products` (
    `prod_id` VARCHAR(40) NOT NULL,
    `modelNumber` VARCHAR(40),
    `description` VARCHAR(40),
    `cost` NUMERIC,
    CONSTRAINT `PK_Products` PRIMARY KEY (`prod_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Customers"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `Customers` (
    `cust_id` VARCHAR(40) NOT NULL,
    `first_name` VARCHAR(40),
    `last_name` VARCHAR(40),
    `street` VARCHAR(40),
    `city` VARCHAR(40),
    `state` VARCHAR(40),
    `zip` VARCHAR(40),
    `phone` VARCHAR(40),
    CONSTRAINT `PK_Customers` PRIMARY KEY (`cust_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Employees"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `Employees` (
    `emp_id` VARCHAR(40) NOT NULL,
    `first_name` VARCHAR(40),
    `last_name` VARCHAR(40),
    CONSTRAINT `PK_Employees` PRIMARY KEY (`emp_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Orders"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `Orders` (
    `order_id` VARCHAR(40) NOT NULL,
    `o_date` DATE,
    `cust_id` VARCHAR(40) NOT NULL,
    `emp_id` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_Orders` PRIMARY KEY (`order_id`, `cust_id`, `emp_id`)
);

# ---------------------------------------------------------------------- #
# Add table "LineItem"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `LineItem` (
    `line_item_id` VARCHAR(40) NOT NULL,
    `quantity` INTEGER,
    `prod_id` VARCHAR(40) NOT NULL,
    `order_id` VARCHAR(40) NOT NULL,
    `cust_id` VARCHAR(40) NOT NULL,
    `emp_id` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_LineItem` PRIMARY KEY (`line_item_id`, `prod_id`, `order_id`, `cust_id`, `emp_id`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `LineItem` ADD CONSTRAINT `Products_LineItem` 
    FOREIGN KEY (`prod_id`) REFERENCES `Products` (`prod_id`);

ALTER TABLE `LineItem` ADD CONSTRAINT `Orders_LineItem` 
    FOREIGN KEY (`order_id`, `cust_id`, `emp_id`) REFERENCES `Orders` (`order_id`,`cust_id`,`emp_id`);

ALTER TABLE `Orders` ADD CONSTRAINT `Customers_Orders` 
    FOREIGN KEY (`cust_id`) REFERENCES `Customers` (`cust_id`);

ALTER TABLE `Orders` ADD CONSTRAINT `Employees_Orders` 
    FOREIGN KEY (`emp_id`) REFERENCES `Employees` (`emp_id`);

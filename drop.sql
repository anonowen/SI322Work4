# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project2.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-27 18:32                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `LineItem` DROP FOREIGN KEY `Products_LineItem`;

ALTER TABLE `LineItem` DROP FOREIGN KEY `Orders_LineItem`;

ALTER TABLE `Orders` DROP FOREIGN KEY `Customers_Orders`;

ALTER TABLE `Orders` DROP FOREIGN KEY `Employees_Orders`;

# ---------------------------------------------------------------------- #
# Drop table "LineItem"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `LineItem` DROP PRIMARY KEY;

DROP TABLE `LineItem`;

# ---------------------------------------------------------------------- #
# Drop table "Orders"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Orders` DROP PRIMARY KEY;

DROP TABLE `Orders`;

# ---------------------------------------------------------------------- #
# Drop table "Employees"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Employees` DROP PRIMARY KEY;

DROP TABLE `Employees`;

# ---------------------------------------------------------------------- #
# Drop table "Customers"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Customers` DROP PRIMARY KEY;

DROP TABLE `Customers`;

# ---------------------------------------------------------------------- #
# Drop table "Products"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Products` DROP PRIMARY KEY;

DROP TABLE `Products`;

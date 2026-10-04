# E-COMMERCE MANAGEMNT SYSTEM 


## 📌 Project Overview

The E-Commerce Management System is a relational database project designed to efficiently manage and organize the data involved in an e-commerce business.

### 🔹 Key Points

- • Manages customer, product, order, payment, and delivery information.
- • Provides a centralized database for storing and retrieving information.
- • Maintains relationships between different entities using keys.
- • Supports efficient data insertion, updating, deletion, and retrieval.
- • Helps generate useful information through SQL queries and reports.

---

## 🎯 Project Objectives

### 🔹 Main Objectives

- • To efficiently manage customer information.
- • To maintain product and category details.
- • To manage customer orders and order items.
- • To maintain payment and delivery information.
- • To establish relationships between different database tables.
- • To reduce data redundancy and improve data consistency.
- • To retrieve required information using SQL queries.

---

## ❗ Problem Statement

### 🔹 Existing Problems

- • Managing large amounts of e-commerce data manually is difficult.
- • Customer, product, and order information may become difficult to track.
- • Duplicate and inconsistent data can occur without proper database management.
- • Retrieving specific information from large datasets can be time-consuming.
- • Maintaining relationships between customers, orders, products, and payments can be complex.

### 🔹 Proposed Solution

- • Provides a centralized relational database for e-commerce information.
- • Organizes data into separate but related tables.
- • Uses primary and foreign keys to maintain relationships.
- • Uses SQL queries for efficient data management and retrieval.
- • Improves data accuracy, consistency, and accessibility.

---

## 🗂️ Main Entities

### 👤 Customer

- • Stores customer identification and personal details.
- • Maintains customer contact information.
- • Each customer is uniquely identified using a primary key.

### 📦 Product

- • Stores product details and pricing information.
- • Maintains product availability and category information.
- • Connects products with orders and categories.

### 🏷️ Category

- • Organizes products into different categories.
- • Helps classify and manage products efficiently.
- • Maintains the relationship between products and categories.

### 🏭 Supplier

- • Stores supplier information.
- • Maintains details about suppliers providing products.
- • Helps establish the connection between suppliers and products.

### 🛍️ Order

- • Stores customer order information.
- • Maintains order date and order-related details.
- • Connects customers with the products they purchase.

### 📋 Order Item

- • Stores individual products included in an order.
- • Maintains product quantity and order details.
- • Connects orders with products.

### 💳 Payment

- • Stores payment information related to orders.
- • Maintains payment status and payment details.
- • Helps track completed and pending payments.

### 🚚 Delivery

- • Stores delivery information for customer orders.
- • Maintains delivery status and related details.
- • Helps track the delivery process.

---

## 🏗️ Database Design

### 🔹 ER Diagram

- • The database is designed using an Entity Relationship model.
- • Identifies the main entities and their relationships.
- • Shows how different tables are connected.
- • Helps in creating an organized database structure.

### 🔹 Keys and Relationships

- • Primary Keys uniquely identify records in each table.
- • Foreign Keys establish relationships between tables.
- • One-to-many relationships are used where required.
- • Relationships help maintain data integrity.

---

## 🔐 Constraints

### 🔹 Types of Constraints Used

- • **PRIMARY KEY** – uniquely identifies each record.
- • **FOREIGN KEY** – connects related tables.
- • **NOT NULL** – ensures required values are provided.
- • **UNIQUE** – prevents duplicate values.
- • **CHECK** – ensures values satisfy specified conditions.
- • **DEFAULT** – provides a default value when no value is specified.

---

## 💻 SQL Operations

### 🔹 DDL Commands

- • `CREATE` – creates database tables.
- • `ALTER` – modifies existing table structures.
- • `DROP` – removes database objects.

### 🔹 DML Commands

- • `INSERT` – adds new records.
- • `UPDATE` – modifies existing records.
- • `DELETE` – removes records.

### 🔹 DQL Commands

- • `SELECT` – retrieves information from tables.
- • `WHERE` – filters records based on conditions.
- • `ORDER BY` – sorts the retrieved data.
- • `GROUP BY` – groups records for analysis.

---

## 🔎 Advanced SQL Concepts

### 🔹 Joins

- • Used to retrieve related information from multiple tables.
- • Helps combine customer, order, product, payment, and delivery data.
- • Useful for generating meaningful reports.

### 🔹 Aggregate Functions

- • `COUNT()` – counts records.
- • `SUM()` – calculates totals.
- • `AVG()` – calculates averages.
- • `MIN()` – finds the minimum value.
- • `MAX()` – finds the maximum value.

### 🔹 Views

- • Used to create virtual tables based on SQL queries.
- • Simplifies frequently used queries.
- • Helps present important information in an organized way.

---

## 🔄 CRUD Operations

### 🔹 Create

- • Adds new customer, product, and order records.

### 🔹 Read

- • Retrieves required information from the database.

### 🔹 Update

- • Modifies existing customer, product, order, and payment information.

### 🔹 Delete

- • Removes unwanted or outdated records.

---

## 🧪 Testing and Validation

### 🔹 Database Testing

- • Tested table creation and database structure.
- • Verified primary key and foreign key relationships.
- • Tested different SQL operations using sample data.
- • Checked `INSERT`, `UPDATE`, `DELETE`, and `SELECT` operations.
- • Verified results obtained from joins and aggregate functions.
- • Ensured data consistency and accuracy.

---
## 🛠️ Technologies Used

- **Database:** Oracle SQL
- **Language:** SQL
- **Concepts:** DBMS, ER Model, Relational Database
- **SQL Operations:** DDL, DML, DQL
- **Advanced SQL:** Joins, Aggregate Functions, Views
- **Constraints:** Primary Key, Foreign Key, NOT NULL, UNIQUE, CHECK, DEFAULT

---

## 📊 Project Outputs

### 🔹 Important Outputs

- • Customer information.
- • Product and category information.
- • Supplier details.
- • Customer order details.
- • Order item information.
- • Payment details.
- • Delivery information.
- • Combined information using SQL joins.
- • Analytical results using aggregate functions.

---

## 👥 Project Modules

### 👤 Person A – Documentation & Screenshots

- • Prepared project documentation.
- • Added screenshots of SQL queries and outputs.
- • Organized project information in the README.

### 💻 Person B – DML & SQL Queries

- • Implemented `INSERT`, `UPDATE`, and `DELETE` operations.
- • Developed SQL queries for retrieving information.
- • Implemented joins and aggregate functions.

### 🗄️ Person C – DDL, Tables & Constraints

- • Created database tables.
- • Defined table structures and attributes.
- • Implemented primary keys and foreign keys.
- • Applied required database constraints.

### 🏗️ Person D – ER Diagram & Database Design

- • Designed the ER diagram.
- • Identified entities and relationships.
- • Designed the overall database structure.
- • Established relationships between tables.

---

## 🌟 Key Features

- • Centralized e-commerce database.
- • Customer and product management.
- • Order and order-item management.
- • Payment management.
- • Delivery management.
- • Supplier and category management.
- • Data integrity using constraints.
- • Efficient data retrieval using SQL.
- • Reporting and analysis using SQL queries.

---

## ✅ Advantages

- • Reduces data redundancy.
- • Improves data consistency.
- • Provides faster data retrieval.
- • Maintains relationships between entities.
- • Improves data accuracy and integrity.
- • Makes e-commerce information easier to manage.
- • Provides a structured approach to database management.

---

## 🚀 Future Enhancements

- • Develop a web-based user interface.
- • Add customer login and authentication.
- • Integrate online payment services.
- • Add real-time order tracking.
- • Implement inventory management.
- • Generate automated reports.
- • Add advanced analytics and dashboards.

---

## 🏁 Conclusion

The E-Commerce Management System provides an efficient and structured approach to managing e-commerce data.

### 🔹 Final Points

- • Demonstrates practical implementation of DBMS concepts.
- • Uses relational database principles to organize information.
- • Implements SQL operations for effective data management.
- • Maintains data integrity using keys and constraints.
- • Provides efficient retrieval, reporting, and analysis of e-commerce data.

[Click here to watch the project video](https://drive.google.com/file/d/1yQnPUp-gEHfh07gHrKntMCkKENhJSg9N/view?usp=sharing)
[Website for E-Commerce Management System](https://e-commercemanagementsystem.netlify.app/)

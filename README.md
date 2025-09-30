# E-commerce Database SQL Project 🛒

This repository contains the schema and queries for a basic MySQL e-commerce database. It is designed to demonstrate fundamental database creation, data manipulation (CRUD), table joining, and analysis techniques in SQL.

---

## 🚀 Getting Started

To use this project, you will need a running MySQL instance (or similar relational database environment like MariaDB).

### Setup Instructions

1.  **Clone the Repository:** Download or clone this repository to your local machine.
2.  **Run the Setup File:** Execute the main SQL file (`ecommerce_setup.sql` or similar) in your MySQL client (like MySQL Workbench, DBeaver, or the command line). This script will:
    * Create the `ecommerce` database.
    * Create the `Customers`, `Products`, `Orders`, and `OrderDetails` tables.
    * Populate the tables with sample data.

### Database Schema

The database is structured to follow basic normalization principles:

| Table | Purpose | Key Columns |
| :--- | :--- | :--- |
| **`Customers`** | Stores customer personal information. | `Customer_id` (PK) |
| **`Products`** | Stores product details and pricing. | `Product_id` (PK) |
| **`Orders`** | Stores transaction header information (who, when, total amount). | `Order_id` (PK), `Customer_id` (FK) |
| **`OrderDetails`** | The **junction table** linking `Orders` to `Products` (line items). | `Order_id` (FK), `Product_id` (FK) |

---

## 💻 Key Queries and Analysis

The repository includes various SQL queries used to perform typical e-commerce analysis.

| Query Description | SQL Technique Used |
| :--- | :--- |
| Retrieve customer names and order dates. | `JOIN` |
| Calculate the total amount spent by each customer. | `JOIN`, `SUM()`, `GROUP BY` |
| Identify customers who purchased a specific product. | **Three-Table JOIN** (`Customers` $\to$ `Orders` $\to$ `OrderDetails` $\to$ `Products`) |
| Find the top $N$ most expensive products. | `ORDER BY`, `LIMIT` |
| Calculate the average order value (AOV). | `AVG()` |

---

## 🛠️ Technologies Used

* **Database:** MySQL
* **Language:** SQL (Structured Query Language)

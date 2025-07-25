## 📘 Complete SQL Learning & Reference Guide

### 👤 Author: Vikash Kumar

### 📊 Target DBMS: MySQL

### 📋 Description: This README contains structured SQL knowledge — from database/table creation (DDL) to advanced querying, ER diagrams, stored procedures, and Python integration.

---

## 📂 Table of Contents

1. [Data Definition Language (DDL)](#1-data-definition-language-ddl)
2. [Data Manipulation Language (DML)](#2-data-manipulation-language-dml)
3. [Basic Queries](#3-basic-queries)
4. [Filtering (WHERE)](#4-where-clause)
5. [Sorting and Limits](#5-order-by--limit)
6. [Aggregation and Grouping](#6-aggregate-functions--group-by)
7. [Joins](#7-joins)
8. [Subqueries](#8-subqueries)
9. [Stored Procedures](#9-stored-procedures)
10. [Entity Relationship Diagram (ERD)](#10-entity-relationship-diagram-erd)
11. [Advanced Queries](#11-advanced-queries)
12. [SQL + Python Integration](#12-sql--python-integration)
13. [Common Errors and Fixes](#13-common-errors-and-fixes)

---

## 1. Data Definition Language (DDL)

```sql
-- Create a new database
CREATE DATABASE shop;

-- Create a table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(8,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Alter a table (add a column)
ALTER TABLE products ADD COLUMN stock INT DEFAULT 0;

-- Rename a column (MySQL 8+)
ALTER TABLE products RENAME COLUMN name TO product_name;

-- Drop a table
DROP TABLE products;
```

---

## 2. Data Manipulation Language (DML)

```sql
-- Insert data into a table
INSERT INTO products (product_name, category, price, stock)
VALUES ('Laptop', 'Electronics', 799.99, 20);

-- Insert multiple rows
INSERT INTO products (product_name, category, price, stock)
VALUES
('Shoes', 'Fashion', 49.99, 50),
('Watch', 'Accessories', 199.99, 15);

-- Update data
UPDATE products SET price = 59.99 WHERE product_name = 'Shoes';

-- Delete data
DELETE FROM products WHERE product_id = 2;
```

---

## 3. Basic Queries

```sql
SELECT * FROM products;
SELECT product_name, price FROM products;
```

---

## 4. WHERE Clause

```sql
SELECT * FROM products WHERE category = 'Electronics';
```

---

## 5. ORDER BY & LIMIT

```sql
SELECT * FROM products ORDER BY price DESC;
SELECT * FROM products ORDER BY price DESC LIMIT 5;
```

---

## 6. Aggregate Functions & GROUP BY

```sql
SELECT category, SUM(stock) AS total_stock FROM products GROUP BY category;
```

---

## 7. Joins

```sql
SELECT o.order_id, c.customer_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;
```

---

## 8. Subqueries

```sql
SELECT product_name, price FROM products
WHERE price > (SELECT AVG(price) FROM products);
```

---

## 9. Stored Procedures

```sql
DELIMITER //

CREATE PROCEDURE GetProductByID(IN pid INT)
BEGIN
   SELECT * FROM products WHERE product_id = pid;
END //

DELIMITER ;

-- Call it
CALL GetProductByID(1);
```

---

## 10. Entity Relationship Diagram (ERD)

* Use MySQL Workbench:
  `Database → Reverse Engineer → Select Schema → Finish → Export`
* For a shop app, you may have:

  * `products`, `customers`, `orders`, `order_items`

---

## 11. Advanced Queries

```sql
SELECT product_name,
   CASE
     WHEN price < 100 THEN 'Cheap'
     WHEN price BETWEEN 100 AND 500 THEN 'Moderate'
     ELSE 'Expensive'
   END AS price_range
FROM products;
```

---

## 12. SQL + Python Integration

```python
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="yourpassword",
    database="shop"
)

cursor = conn.cursor()
cursor.execute("SELECT * FROM products")
for row in cursor.fetchall():
    print(row)
```

---

## 13. Common Errors and Fixes

| Error Code | Meaning                     | Fix                                    |
| ---------- | --------------------------- | -------------------------------------- |
| 1064       | SQL syntax error            | Check for commas, quotes, and keywords |
| 1054       | Unknown column              | Misspelled or non-existent column      |
| 1146       | Table not found             | Make sure the table is created         |
| NULL logic | Use `IS NULL`, not `= NULL` |                                        |

---

> ✅ Feel free to use it to enhance your knowledge and let me know if any help needed!
>

---

> 📄 **Copyright © 2025 Vikash Kumar**  
> This content is licensed for educational and personal use only. Redistribution without permission is prohibited.



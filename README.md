# SET-OPERATORS-IN-SQL-SERVER

This repository contains practical examples of SQL Server Set Operators used to combine and compare data from multiple queries.

## Set Operators Covered

* UNION
* UNION ALL
* EXCEPT
* INTERSECT

## What Are Set Operators?

Set Operators are used to combine the results of two or more `SELECT` queries.

For set operators to work correctly:

* Each query should return the same number of columns.
* Corresponding columns should have compatible data types.
* The column order should match between the queries.

## 1. UNION

`UNION` combines the results of two queries and removes duplicate rows.

### Application

It is useful when data comes from different tables but you want to create one unique combined result.

Example:

Combining customer names and employee names into one list without duplicates.

## 2. UNION ALL

`UNION ALL` combines the results of two queries and keeps duplicate rows.

### Application

It is useful when you want to preserve every record from different datasets.

Examples include:

* Combining monthly sales tables
* Combining transaction history
* Combining current and historical data
* Combining logs from multiple sources

`UNION ALL` can also be faster than `UNION` because SQL Server does not need to remove duplicates.

## 3. EXCEPT

`EXCEPT` returns rows from the first query that do not exist in the second query.

### Application

It is useful for identifying differences between datasets.

Examples include:

* Finding employees who are not customers
* Finding products that were never ordered
* Finding records missing from another table
* Comparing old and new datasets

## 4. INTERSECT

`INTERSECT` returns rows that exist in both queries.

### Application

It is useful for finding common records between datasets.

Examples include:

* Finding employees who are also customers
* Finding products available in two different stores
* Finding users present in two systems
* Comparing common records between datasets

## Practical Use Case

This project also contains a practical example using:

* `Sales.Orders`
* `Sales.OrdersArchive`

The goal is to combine current order data and archived order data into one report.

A `SourceTable` column is added to identify whether each record comes from:

* Orders
* OrderArchive

This type of operation can be useful in real-world reporting when recent data and historical data are stored separately.

## Real-World Applications of Set Operators

SQL Set Operators are commonly used in:

* Data analysis
* Data validation
* Historical reporting
* Data migration
* Data reconciliation
* Combining archived and active records
* Comparing datasets
* Detecting missing records
* Creating consolidated reports

## Tools Used

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)

## Repository Structure

```text
sql-server-set-operators/
│
├── README.md
└── set_operators.sql
```

## Purpose

The purpose of this project is to understand how SQL Set Operators can be used to combine, compare, and analyze data from multiple tables and queries.

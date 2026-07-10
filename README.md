# Data Analyst Project Tracker - SQL

## Project Overview

The Data Analyst Project Tracker is a MySQL-based database project developed to manage employees, clients, projects, tasks, and project status within an analytics company.

This project demonstrates essential SQL concepts used in Data Analytics, including database design, CRUD operations, joins, aggregate functions, subqueries, views, and business reporting.

---

## Project Objectives

- Design a relational database using MySQL.
- Manage employees, clients, projects, and tasks.
- Perform CRUD operations.
- Practice SQL queries from beginner to intermediate level.
- Generate business reports using SQL.

---

##  Database Tables

- Employees
- Clients
- Projects
- Tasks
- Project_Status

---

## Project Structure

```
Data_Analyst_Project_Tracker-SQL

│── 01_database_and_tables.sql
│── 02_insert_data.sql
│── 03_ddl_dml.sql
│── 04_basic_queries.sql
│── 05_functions_and_joins.sql
│── 06_subqueries_and_views.sql
│── 07_business_analytics.sql
│── README.md
```

---

## Technologies Used

- MySQL
- MySQL Workbench
- GitHub

---

## SQL Concepts Covered

### Database Design
- Create Database
- Create Tables
- Primary Key
- Foreign Key
- Constraints

### DDL
- ALTER TABLE
- MODIFY COLUMN

### DML
- INSERT
- UPDATE
- DELETE

### DQL
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING

### Operators
- AND
- OR
- LIKE
- BETWEEN
- IN

### SQL Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- ROUND()

### Joins
- INNER JOIN
- LEFT JOIN

### Subqueries
- Single Row Subqueries
- IN Operator

### Views
- CREATE VIEW
- SELECT FROM VIEW

### Business Analytics Queries
- Total Employees
- Total Projects
- Department-wise Employee Count
- Employee-wise Project Count
- Client-wise Budget Analysis
- Completed Projects
- Pending Projects
- Average Salary by Department
- Highest Budget Project
- Complete Project Report

## 🎓 Learning Outcomes

Through this project, I learned:

- Relational Database Design
- SQL Query Writing
- CRUD Operations
- Joins
- Aggregate Functions
- Subqueries
- Views
- Business Reporting using SQL

---

## ER Diagram
# Project Database Schema

```mermaid
%%{init: {
  'theme': 'base',
  'themeVariables': {
    'primaryColor': '#F5E6E8',
    'primaryTextColor': '#4A1521',
    'primaryBorderColor': '#722F37',
    'lineColor': '#722F37',
    'textColor': '#4A1521',
    'mainBkg': '#F5E6E8'
  }
}}%%
erDiagram
    Clients {
        int client_id PK
        string company_name
        string industry
        string country
    }

    Employees {
        int employee_id PK
        string employee_name
        string department
        string designation
        float salary
        date joining_date
        string email
    }

    Projects {
        int project_id PK
        string project_name
        int client_id FK
        int employee_id FK
        float budget
        date start_date
        date end_date
    }

    Tasks {
        int task_id PK
        int project_id FK
        int employee_id FK
        string task_name
        date deadline
    }

    Project_Status {
        int status_id PK
        int project_id FK
        string status
        float completion_percentage
    }

    Clients ||--o{ Projects : "has"
    Employees ||--o{ Projects : "manages"
    Projects ||--o{ Tasks : "contains"
    Employees ||--o{ Tasks : "assigned_to"
    Projects ||--|| Project_Status : "tracks"










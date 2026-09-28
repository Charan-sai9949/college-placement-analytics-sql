# College Placement Analytics System

## 📌 Project Overview

The College Placement Analytics System is an Oracle SQL database project designed to manage and analyze college placement activities.

The system stores information about students, companies, job roles, skills, applications, interviews, and placement offers.

It uses relational database concepts and advanced SQL queries to generate useful placement insights.

## 🎯 Objectives

- Manage student and company information
- Track student skills
- Store job role requirements
- Track placement applications
- Manage interview rounds and results
- Record placement offers
- Analyze packages and placement data
- Generate useful placement insights using SQL

## 🛠️ Technologies Used

- Oracle SQL
- Oracle Live SQL
- Relational Database Management System
- SQL Joins
- Subqueries
- CTEs
- Aggregate Functions
- Window Functions

## 🗂️ Database Tables

The project contains 9 tables:

1. Students
2. Companies
3. Job Roles
4. Skills
5. Student Skills
6. Job Role Skills
7. Applications
8. Interviews
9. Offers

## 📊 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- COUNT()
- AVG()
- MAX()
- CASE
- Subqueries
- CTEs
- RANK()
- ROW_NUMBER()
- PARTITION BY

## 🔍 Key Analysis

The system can answer questions such as:

- Which company received the most applications?
- What is the average package offered by each company?
- Which students have CGPA above the average?
- Which students applied for high-package roles?
- What are the most common student skills?
- What skills are required for each job role?
- Who are the top students in each department?
- Which role offers the highest package?
- What are the interview results for each applicant?

## 🏗️ Project Structure

college-placement-analytics-sql/
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   └── 03_analysis_queries.sql
│
├── ER_Diagram.png
└── README.md
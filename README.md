# Sales Performance & Customer Analytics Dashboard 📈📊

## Project Overview
This project is an end-to-end data analytics solution designed to evaluate corporate sales performance, track customer purchasing behavior, and measure the profitability of specific product lines. The goal was to build a dynamic tool that a Sales Director could use to monitor quota attainment, track Average Order Value (AOV), and identify top-tier clients.

## Tech Stack Used
* **Database Management:** SQL Server (Data extraction, staging table architecture, and data type formatting)
* **Data Visualization & BI:** Power BI
* **Calculations & Logic:** SQL Aggregations, Window Functions, and DAX (Data Analysis Expressions)

## Key Business Metrics Tracked
1. **Average Order Value (AOV):** Utilized distinct counts of Order IDs to calculate the true revenue generated per unique customer checkout.
2. **Discount Profitability Impact:** Calculated the delta between the Manufacturer's Suggested Retail Price (MSRP) and the actual sale price to measure the revenue lost to sales team discounting.
3. **Order Fulfillment Health:** Tracked the percentage of orders successfully shipped versus those cancelled, disputed, or placed on hold to measure supply chain reliability.
4. **Time-Series Growth:** Analyzed Year-over-Year (YoY) and quarterly revenue trends to identify seasonal spikes in product demand.

## The Data Model & Preparation
* Engineered a robust relational data model processing thousands of global sales transactions.
* Utilized SQL Staging Tables to securely import unformatted CSV files, preventing data loss and numeric truncation (specifically for geographic postal codes).
* Standardized time-series data into strict `DATETIME` formats to enable seamless chronological grouping in Power BI.

## Files Included
* `Sales_Database_Architecture.sql`: The complete database creation and table schema scripts.
* `Sales_Business_Queries.sql`: Highly analytical SQL queries answering core business performance questions.
* `Sales_Performance_tracker.pbix`: The final Power BI project file containing the DAX measures and interactive canvas.
* `Dashboard_Screenshots/`: High-resolution images of the final dashboard.
<img width="1920" height="1031" alt="Sales_Performance_Tracker" src="https://github.com/user-attachments/assets/018169ba-f2fb-4f9a-8aaa-0b6b67345495" />

---
## ☕ Stay Connected

Let's stay in touch! Feel free to connect with me on the following platforms:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sumit-kumar-soni-7b504224b/)

---

## 🛡️ License

Copyright (c) 2026 Sumit Kumar Soni

All rights reserved.

This project is publicly visible for educational/viewing purposes only.

You are NOT allowed to:
- copy the code
- reuse the code
- modify the code
- redistribute the code
- sell the code
- use this project in portfolios
- claim this work as your own

## 🌟 About Me

Hi there! I'm **Sumit Kumar Soni**. I’m passionate Data Analyst on a mission to share insight by using data and make working with data enjoyable and engaging!

Let's stay in touch! Feel free to connect with me on the following platforms:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sumit-kumar-soni-7b504224b/)

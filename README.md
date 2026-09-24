# 📊 Profit & Loss Analysis Dashboard

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![Financial Analytics](https://img.shields.io/badge/Financial-Analytics-green)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Data Analysis](https://img.shields.io/badge/Data-Analysis-orange)
![Status](https://img.shields.io/badge/Project-Completed-success)

> A financial analytics project analysing revenue, costs, profitability,
> margins, regional performance, product profitability, customer
> concentration, and budget-versus-actual performance using SQL and an
> interactive P&L dashboard.

---

# 📌 Project Overview

This project provides a comprehensive **Profit & Loss (P&L) analysis** of
transaction-level financial data for a rolling twelve-month reporting period.

The analysis covers:

- Revenue
- Cost of Goods Sold (COGS)
- Operating Expenses
- Interest
- Tax
- Gross Profit
- EBITDA
- Net Profit
- Gross Profit Margin
- EBITDA Margin
- Net Profit Margin
- Regional Performance
- Product Profitability
- Customer Revenue
- Budget vs Actual Performance

The dataset contains **499 transaction records**, covering **4 regions,
20 products, and 220 customers** for the reporting period
**July 2024 – June 2025**.

---

# 🎯 Project Objectives

The main objectives of this project are:

- Analyse total revenue and profitability.
- Calculate core P&L financial metrics.
- Evaluate Gross Profit, EBITDA, and Net Profit.
- Analyse monthly revenue and profitability trends.
- Compare financial performance across regions.
- Identify high- and low-margin products.
- Analyse customer revenue concentration.
- Compare Actual performance against Budget.
- Calculate regional revenue contribution.
- Identify products with above-average profitability.
- Analyse negative-profit transactions.
- Calculate month-over-month revenue growth.
- Calculate year-over-year revenue growth.
- Build management-level financial KPIs.
- Validate dashboard calculations against the underlying dataset.
- Translate financial analysis into business recommendations.

---

# 📊 Dataset

| Dataset Attribute | Details |
|---|---|
| Transactions | **499** |
| Columns | **20** |
| Reporting Period | **July 2024 – June 2025** |
| Regions | **4** |
| Products | **20** |
| Customers | **220** |
| Missing Values | **None** |
| Data Grain | **Transaction Level** |

---

# 🗂️ Dataset Fields

| Category | Fields |
|---|---|
| Transaction Information | TransactionID, Date, Month, Year |
| Business Dimensions | Region, Product, Business Unit, Customer |
| P&L Inputs | Revenue, COGS, Operating Expense, Interest, Tax |
| Budget Tracking | Financial Metric, Actual, Budget |
| Derived Measures | Gross Profit, EBITDA, Net Profit, Net Profit Margin |

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **PostgreSQL** | SQL analysis and financial calculations |
| **SQL** | Aggregation, ranking, trend and KPI analysis |
| **Power BI** | Financial dashboard and visualization |
| **CSV** | Transaction-level data source |
| **PDF Report** | Financial analysis and documentation |
| **GitHub** | Project version control and portfolio presentation |

---

# 🧮 Financial Calculation Framework

```text
Gross Profit
= Revenue − COGS

EBITDA
= Gross Profit − Operating Expense

Net Profit
= EBITDA − Interest − Tax

Gross Profit Margin
= Gross Profit ÷ Revenue × 100

EBITDA Margin
= EBITDA ÷ Revenue × 100

Net Profit Margin
= Net Profit ÷ Revenue × 100

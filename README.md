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
transaction-level financial data covering a rolling twelve-month period.

The analysis evaluates:

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
- Monthly Financial Trends

The dataset contains **499 transaction records**, covering **4 regions,
20 products, and 220 customers**.

The analysis independently recalculates the major P&L measures from the
underlying financial components and validates them against the source
dashboard.

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
- Identify data-quality and dashboard-labelling issues.
- Translate financial findings into business recommendations.

---

# 📊 Dataset

| Dataset Attribute | Details |
|---|---|
| Transaction Records | **499** |
| Columns | **20** |
| Reporting Period | **Rolling 12 Months** |
| Report Period | **Jul 2024 – Jun 2025** |
| Detailed Dataset Window | **15 Jul 2024 – 15 Jun 2025** |
| Regions | **4** |
| Products | **20** |
| Customers | **220** |
| Missing Values | **None** |
| Data Grain | **Transaction Level** |

> **Note:** The reporting period is a rolling twelve-month window rather
> than a fixed calendar or fiscal year. Period-over-period comparisons
> should therefore be interpreted accordingly.

---

# 🗂️ Dataset Fields

| Category | Fields |
|---|---|
| Transaction Information | TransactionID, Date, Month, Year |
| Business Dimensions | Region, Product, Business Unit, Customer |
| P&L Inputs | Revenue, COGS, Operating Expense, Interest, Tax |
| Budget Tracking | Financial Metric, Actual, Budget |
| Derived Measures | Gross Profit, EBITDA, Net Profit, Net Profit Margin |

All 20 columns are fully populated across the 499 transaction records.

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **PostgreSQL** | SQL analysis and financial calculations |
| **SQL** | Aggregation, ranking, trend and KPI analysis |
| **Power BI** | Financial dashboard and visualization |
| **CSV / Dataset** | Transaction-level financial data |
| **PDF Report** | Financial analysis and documentation |
| **GitHub** | Project version control and portfolio presentation |

---

# 🧮 Financial Calculation Framework

The project independently validates the major financial calculations.

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

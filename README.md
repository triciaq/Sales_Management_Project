
# 📊 Sales Management Dashboard | Business Intelligence Portfolio Project

## Overview

This project was developed to fulfill a **business request for an executive sales report** aimed at sales managers and representatives. The report provides insights into customer behavior, product performance, and sales trends over time — enabling more informed strategic decision-making.

Built with **SQL** for data transformation and **Power BI** for visualization, this project demonstrates a complete BI workflow from raw data extraction to stakeholder-ready dashboards.

---

## 🧩 Business Request & User Stories

The business stakeholders defined specific needs that translated into the following user stories. Each story outlines the role, business requirement, value, and acceptance criteria.

| # | As a... | I want... | So that... | Acceptance Criteria |
|---|---------|-----------|------------|----------------------|
| 1 | Sales Manager | A dashboard overview of internet sales | I can track which customers and products sell best | A Power BI dashboard that auto-refreshes daily |
| 2 | Sales Representative | A detailed breakdown of sales per customer | I can follow up with high-value customers | A filterable Power BI dashboard by customer |
| 3 | Sales Representative | A detailed breakdown of sales per product | I can optimize focus on best-selling products | A filterable Power BI dashboard by product |
| 4 | Sales Manager | Sales data tracked over time vs budget | I can evaluate sales performance and forecast | A Power BI dashboard with KPIs and trend charts |

---

## 🛠️ Tech Stack

- **Database:** Microsoft SQL Server (AdventureWorksDW2019)
- **ETL/Transformation:** SQL
- **Reporting & Visualization:** Power BI
- **Data Source:** Internet sales data, product/customer dimension tables, and Excel-based sales budgets

---

## 🧼 Data Cleansing & Transformation (SQL)

### ✅ Extracted Tables:
- **DimDate** → Cleaned and filtered for relevant years; added month and quarter context
- **DimCustomer** → Cleaned names, gender formatting, and added city from geography table
- **DimProduct** → Enhanced with product category and subcategory details
- **FactInternetSales** → Filtered for the last two years; selected relevant fields
- **Sales Budget (Excel)** → Loaded and connected in Power BI for comparison against actuals

### 📌 Sample SQL Transformations

```sql
-- DIM_Calendar (Sample)
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS MonthShort,
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE 
  CalendarYear >= 2019
```

Other transformation snippets available in the repository under `/sql` folder.

---

## 📐 Data Model
<img width="815" height="480" alt="Image" src="https://github.com/user-attachments/assets/b02a2ae6-ae18-483d-9d7e-f78a8dbc71fc" />
The Power BI data model features:
- Star schema design
- Fact table: `FactInternetSales`
- Supporting dimension tables: `DimCustomer`, `DimProduct`, `DimDate`
- Budget data from Excel integrated via `FACT_Budget`

🧭 **Relationship Overview**:
- CustomerKey → DimCustomer
- ProductKey → DimProduct
- OrderDateKey → DimDate
- Sales Budget joined on Month & Year

---

## 📊 Dashboard Overview

The Power BI report is structured across **three key pages**:

1. **Executive Dashboard Overview**
   - KPIs: Total Sales, Sales vs Budget
   - Charts: Sales Trend, Top Products, Top Customers

2. **Customer Drilldown**
   - Filterable by customer
   - Detailed table + visual insights

3. **Product Drilldown**
   - Filterable by product
   - Product trends, subcategory breakdown
     
---
## 📈 Key Insights & Business Findings

The executive dashboard revealed several data-driven insights critical for decision-making:

- **🔝 80/20 Rule in Customer Sales**: Approximately 20% of customers contributed to over 70% of total sales revenue, signaling a highly concentrated customer base. This opens up opportunities for customer loyalty initiatives, VIP programs, and targeted marketing campaigns.

- **🔥 Best-Selling Products**: A handful of product subcategories dominated sales. For instance, products in the *"Accessories"* and *"Bikes"* categories had the highest sales volumes and revenue — indicating areas where inventory and marketing spend should be focused.

- **📉 Underperforming Products**: Several products showed little to no sales activity over the last two years. These products may be obsolete or irrelevant to current market demand and should be reviewed for possible discontinuation or rebranding.

- **📊 Seasonal Trends**: Sales peaked in **Q4** of each year, particularly during **November and December**, suggesting seasonal buying patterns and opportunities for targeted promotions during the holiday season.

- **📉 Budget Variance**: Sales underperformed against budget projections in Q2 of the most recent year, highlighting a need for closer tracking of marketing efforts, market conditions, or inventory issues.

---


### 🖼️ Preview  
![Dashboard Screenshot](./assets/dashboard_preview.png)  

---

## 🔍 Key Highlights

- 📌 **Designed for stakeholders**: Prioritized usability and relevance per user role
- ⚙️ **Daily data refresh**: Ensures up-to-date analytics for decision-makers
- 🧠 **Business-aligned storytelling**: Focused on driving actions through insights
- 📈 **Performance monitoring**: Budget comparisons, top performers, sales evolution



# Data Warehouse & Analytics Project

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![ETL](https://img.shields.io/badge/ETL%20Pipeline-4A90D9?style=for-the-badge)
![Star Schema](https://img.shields.io/badge/Star%20Schema-F5A623?style=for-the-badge)
![Medallion Architecture](https://img.shields.io/badge/Medallion%20Architecture-8B5CF6?style=for-the-badge)

A comprehensive end-to-end data warehousing and analytics solution built on SQL Server — covering data ingestion, transformation, modeling, and business intelligence reporting.

---

## 📐 Architecture Overview

This project follows the **Medallion Architecture** pattern, organizing data across three progressive layers:

```
CSV Sources (ERP + CRM)
        │
        ▼
┌───────────────┐
│  Bronze Layer │  ← Raw ingestion, no transformation
└───────┬───────┘
        │
        ▼
┌───────────────┐
│  Silver Layer │  ← Cleansed, standardized, normalized
└───────┬───────┘
        │
        ▼
┌───────────────┐
│   Gold Layer  │  ← Star schema, business-ready analytics
└───────────────┘
```

| Layer | Purpose |
|---|---|
| **Bronze** | Stores raw data as-is from source CSV files, loaded directly into SQL Server |
| **Silver** | Applies cleansing, standardization, and normalization to prepare data for analysis |
| **Gold** | Delivers business-ready fact and dimension tables modeled as a star schema |

---

## 📂 Repository Structure

```
data-warehouse-project/
│
├── datasets/               # Raw source files (ERP & CRM CSVs)
│
├── docs/                   # Data architecture, data models, and data catalog
│
├── scripts/
│   ├── bronze/             # DDL and load scripts for the Bronze layer
│   ├── silver/             # Transformation and cleansing scripts
│   └── gold/               # Star schema creation scripts
│   └── sql-data-analytics/ # surface actionable insights
│
├── tests/                  # Data quality checks and validation scripts
│
└── README.md
```

---

## 🛠️ Tech Stack

- **Database:** Microsoft SQL Server
- **Data Processing:** T-SQL (ETL pipelines, stored procedures)
- **Source Data:** CSV flat files (ERP system + CRM system)
- **Data Modeling:** Star schema (fact & dimension tables)
- **Reporting:** SQL-based analytics queries

---

## 🚀 Project Objectives

### Part 1 — Data Engineering: Building the Warehouse

Design and build a modern data warehouse that consolidates sales data from two source systems, enabling reliable analytical reporting and decision-making.

**Key specifications:**

- **Sources:** Two CSV-based systems — ERP and CRM
- **Data Quality:** Identify and resolve quality issues during the Silver layer transformation
- **Integration:** Merge both sources into a unified, analytics-optimized data model
- **Scope:** Current snapshot only — no historical tracking required
- **Documentation:** Full data model documentation for both technical and business audiences

### Part 2 — Data Analysis: BI & Reporting

Develop SQL-based analytics to surface actionable insights across three domains:

- 🧑‍💼 **Customer Behavior** — Segmentation, purchasing patterns, and retention signals
- 📦 **Product Performance** — Top/bottom performers, category trends, and revenue contribution
- 📈 **Sales Trends** — Period-over-period growth, seasonal patterns, and KPI tracking

---

## 🗂️ Data Model

The Gold layer implements a **star schema** for optimized analytical querying:

- **Fact Table:** `fact_sales` — transactional sales records
- **Dimension Tables:** `dim_customer`, `dim_product`, `dim_date`

> Full data dictionary and ERD diagram available in the `/docs` folder.

---

## 📄 License

This project is for educational and portfolio purposes.

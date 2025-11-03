***End to End Project with Databricks and DBT _ Retail Analytics Data Pipeline***

A modern data pipeline built with dbt, Databricks, and Git for retail analytics and reporting. This project implements a medallion architecture to transform raw retail data into actionable insights for business intelligence.

**📊 Project Overview**
This dbt project processes retail data to create a comprehensive analytics dataset with dimensions and facts for customer behavior, sales performance, product analysis, and return patterns.

**🏗️ Data Architecture**

*Medallion Architecture*

    -Bronze Layer: Raw data ingestion

    -Silver Layer: Cleaned, validated, and enriched data

    -Gold Layer: Business-ready dimensions and facts

**📈 Data Models**

*Dimension Tables*

- dim_customer

Customer demographic and account information for segmentation and marketing analysis.

    Key Fields: customer_sk, customer_code, customer names, contact info, gender, loyalty tier, signup date

    

- dim_store

Retail store location information for geographical analysis.

    Key Fields: store_sk, store_code, store names, city, state, region, country, opening date, size (sq ft)

    

- dim_product

Product catalog information for inventory and sales analysis.

    Key Fields: product_sk, product codes, names, departments, categories, suppliers, list prices, units of measure

   

- dim_date

Comprehensive date dimension for time-based analysis.

    Key Fields: Date attributes, day/month/quarter/year, weekend indicators, period starts/ends

    

*Fact Tables*

- fact_sales

Sales transaction data for revenue analysis and customer behavior.

    Key Fields: Date, store, product, customer, quantity, unit price, gross amount, discount, net amount, payment method

   

- fact_returns

Product return data for quality and satisfaction analysis.

    Key Fields: Return quantities, reasons, refund amounts, associated sales transactions

    

**🛠️ Technology Stack**

    dbt: Data transformation and modeling

    Databricks: Data processing and storage

    Git: Version control and collaboration

    Medallion Architecture: Scalable data design pattern


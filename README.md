# 🏦 Bank Marketing Campaign Analysis

## Business Problem

The objective of this project was to analyze historical banking data to identify the key factors that drive customer subscriptions to term deposits.

By moving away from generalized marketing, the goal was to pinpoint specific demographic and behavioral traits that lead to higher conversion rates, allowing the bank to optimize outreach strategies and resource allocation.

---

## Methodology

The technical workflow for this project involved a multi-stage data engineering and analysis pipeline:

1. **Data Ingestion**:
   Downloaded the raw marketing dataset as a CSV file and loaded it into a **PostgreSQL** database for structured management.

2. **Preprocessing & Feature Engineering**:
   Established a connection between the database and **Python** using an engine. Within Python, I cleaned the data and encoded categorical labels into a binary (1/0) format to facilitate mathematical analysis.

3. **Data Persistence**:
   Following the cleaning process, I created a **Cleaned SQL Table** within the database to store the refined data.

4. **Exploratory Data Analysis (EDA)**:
   Conducted initial calculations and trend visualizations using **Matplotlib** to identify early patterns.

5. **Interactive BI**:
   Connected the cleaned PostgreSQL database to **Power BI**, where I used **DAX** to create new calculated columns and measures for the final dashboard.

---

## Skills

* **PostgreSQL**: Conditional Aggregation **(SUM(CASE WHEN))**, Data Binning **(using CASE statements to create age groups)**, Multi-level Grouping
* **Python**: Implementing **data cleaning libraries** to handle missing values and perform label encoding. Using Matplotlib to generate initial charts and graphs to identify trends before dashboarding.
* **Power BI & DAX**: Designing interactive visuals and writing **DAX** for creating calculated columns. 

---

## Results & Business Recommendation

Based on the analysis visualized in **visual1.png**, **visual2.png**, and **visual3.png**, the following insights were discovered:

### Key Insights

* **High-Conversion Segments**: **Students (75%)** and **Retirees (66%)** are the most likely to subscribe. Retirees represent high-value leads due to their higher average account balances.
* **Seasonal Peaks**: Subscription rates peak significantly in **December (91%)**, **March (90%)**, **September (84%)**, and **October (82%)**.
* **Past Success**: A "success" in a previous campaign is the strongest predictor of future subscription, with a conversion rate near **90%**.
* **Call Efficiency**: Conversion rates are highest during the first **1–3 calls**; outreach beyond **5 calls** shows significant diminishing returns.

---

## Business Recommendations

* **Targeted Outreach**: Prioritize students and retirees for term deposit campaigns to maximize conversion.
* **Strategic Scheduling**: Focus marketing spend and staffing during the high-performance months of **March, September, October, and December**.
* **Operational Optimization**: Limit the number of calls per lead to a maximum of **5** to reduce operational costs without sacrificing significant subscription volume.

---

## Next Steps

* **Automated Pipeline**: Establishing a live connection between the PostgreSQL database and Power BI for real-time dashboard updates.
* **Predictive Analytics**: Integrating a machine learning model to score leads based on their probability of subscribing before the initial contact.
* **Feature Expansion**: Incorporating external economic data to analyze how interest rate fluctuations impact monthly subscription trends.

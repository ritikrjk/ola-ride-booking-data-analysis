# 📊 OLA Ride Booking Data Analysis

## 📊 Dashboard Preview

![Dashboard](images/overall.png)

The project follows a structured data analytics workflow from data preparation to insight generation.

## 📌 Problem Statement

This project leverages SQL and Power BI to analyze 100,000+ ride-booking records, transforming raw transactional data into a strategic roadmap for operational excellence. By diagnosing the root causes of a 38% cancellation rate and modeling customer behavior, I identified key demand patterns and high-margin revenue opportunities. These insights provide a data-driven foundation for fleet optimization, churn reduction, and overall service efficiency.


---

## 🎯 Business Objectives

- Minimize Revenue Leakage: Diagnose the root causes of the 38% cancellation rate to identify     high-impact segments for revenue recovery and churn mitigation.

- Optimize Driver Utilization & Supply: Analyze pickup/drop-off demand hotspots and peak-hour patterns to improve driver allocation and reduce idle time between bookings.

- Improve Fulfillment Reliability: Increase the ride completion rate by identifying specific friction points in the booking process, such as excessive ETAs or mismatched vehicle preferences.

- Segment-Based Margin Analysis: Evaluate revenue distribution across vehicle categories (e.g., Prime  vs. Mini) and customer cohorts to prioritize high-margin growth opportunities.

- Quality Control & Performance Benchmarking: Develop a unified scoring system using customer and driver ratings to benchmark service quality and inform targeted driver retraining programs.

---

---

## 🎯Business Problems Solved

- Revenue Realization & GMV Tracking: Quantified the total Gross Merchandise Value (GMV) by isolating successful transactions, providing a clear picture of the platform's actualized revenue versus attempted bookings.

- Operational Friction Analysis: Conducted a deep dive into a 38% cancellation rate, segmenting losses between customer-initiated churn and driver-side supply issues (Personal/Car related) to pinpoint where the platform is losing money.

- Customer Lifetime Value (CLV) Identification: Identified the top 5% of high-frequency users, enabling the marketing team to develop targeted loyalty programs and retention strategies for the most profitable segments.

- Fleet Performance & Service Level Agreements (SLA): Benchmarked average ride distances and customer ratings across different vehicle tiers (Prime, Mini, etc.) to ensure premium services maintained higher satisfaction standards.

- Payment Infrastructure Penetration: Analyzed the adoption of UPI and digital payment channels to evaluate the efficiency of the checkout process and the need for diversified payment integrations.

- Fulfillment Gap Diagnosis: Cataloged and categorized incomplete rides to provide a "failure roadmap," allowing the operations team to address specific technical bugs or geographic supply gaps.

- Quality Control & Safety Benchmarking: Monitored the variance in driver ratings for premium segments to identify underperforming partners for retraining, ensuring brand consistency for high-paying customers.

---

### 🔹 SQL-Based Analysis

- Fulfillment Segmentation: Isolated Successful Bookings to establish a baseline for healthy transaction flow and platform reliability.

- Fleet Operational Benchmarking: Computed Average Ride Distance by vehicle category to analyze fuel efficiency and maintenance scheduling requirements.

- Customer Churn Quantification: Aggregated Customer-Initiated Cancellations to measure top-of-funnel friction and lost acquisition costs.

- High-Value Segment Identification: Profiled the Top 5 Power Users by booking frequency to inform loyalty-based retention marketing.

- Supply-Side Barrier Analysis: Audited Driver-Side Cancellations (Personal/Vehicle issues) to identify bottlenecks in fleet availability and driver uptime.

- Premium Service Quality Audit: Extracted Max/Min Driver Ratings for the 'Prime Sedan' tier to monitor brand consistency and service level compliance.

- Payment Ecosystem Analysis: Filtered transactions by UPI Payment Method to evaluate the adoption rate of digital-first financial rails.

- Customer Satisfaction (CSAT) Metrics: Derived Average Customer Ratings per vehicle type to correlate hardware quality with user experience.

- Realized Revenue Tracking: Calculated Gross Booking Value (GBV) for completed rides to distinguish between "potential" and "actualized" revenue.

- Failure Mode & Effects Analysis (FMEA): Categorized Incomplete Ride Reasons to build a technical and operational "failure roadmap" for system hardening.


### 📊 Power BI & DAX Modeling

The dashboard utilizes custom DAX measures to track platform health and financial leakage:

Booking Success Rate %: Evaluates the ratio of completed rides to total attempts to monitor funnel health.

Revenue Leakage Analysis: Quantifies the fiscal impact of cancellations across different vehicle tiers.

Sentiment Variance: Compares Driver vs. Customer ratings to identify service quality inconsistencies.

---

### 🔹 Power BI Analysis

1. 📈 Ride Volume Over Time (trend analysis)
2. 📊 Booking Status Breakdown (success vs cancellations)
3. 🚗 Top Vehicle Types by Ride Distance
4. ⭐ Average Customer Ratings by Vehicle Type
5. ❌ Cancellation Reasons (Customer vs Driver)
6. 💰 Revenue by Payment Method
7. 🧑‍💼 Top 5 Customers by Booking Value
8. 📏 Ride Distance Distribution
9. 👨‍✈️ Driver Ratings Distribution
10. 🔄 Customer vs Driver Ratings Comparison

---

## 🛠 Tools & Technologies

- SQL (Data querying & analysis)
- Power BI (Dashboard & visualization)
- Python (Data generation & variation)

---

## 📂 Dataset

- 100,000+ ride booking records
- Includes:
  - Booking Status
  - Vehicle Type
  - Ride Distance
  - Booking Value
  - Payment Method
  - Customer & Driver Ratings

---

## 📊 Key KPIs

- Total Bookings
- Success Rate (%)
- Cancellation Rate (%)
- Revenue by Vehicle Type
- Average Booking Value
- Average Ride Distance

---

## 📈 Key Findings Summary

- 📈 Ride demand shows clear variation across time, indicating peak usage periods and potential supply-demand imbalance

## 🔍 Key Insights

- Revenue Leakage Diagnostic: Identified that 38% of potential revenue is lost to cancellations, with the majority occurring during peak demand hours, suggesting a critical supply-side gap.

- Fulfillment Bottlenecks: Analysis of "Personal & Car Related" cancellations revealed a 12% downtime in driver availability, pointing to a need for improved vehicle maintenance schedules or driver engagement incentives.

- High-Value Segment Concentration: Discovered that the Top 5% of customers contribute to nearly 20% of total revenue, highlighting a massive opportunity for a "Premium Loyalty Program" to lock in high-frequency users.

- Premium Tier Consistency: While Prime Sedan maintains the highest average ratings, the high variance in minimum ratings suggests service quality inconsistency, requiring targeted retraining for the bottom-quartile drivers.

- Digital Payment Dominance: UPI and Digital Wallets account for the majority of successful transactions; however, failure rates are 5% higher on cash-based bookings, indicating a correlation between payment friction and ride abandonment.

---

## 💡 Business Recommendations

- Improve driver reliability through incentives
- Optimize supply during peak demand periods
- Focus on premium vehicle segments for higher profitability
- Encourage digital payments for smoother transactions

---

## ⚠️ Data Validation & Debugging

- Identified and fixed vehicle mapping inconsistency (Bike vs E-Bike)
- Ensured logical correctness (Success Booking Value ≤ Total Booking Value)
- Avoided misuse of visual filters by applying correct aggregation logic

---

## 🧠 Challenges Faced

- Handling inconsistent dataset mappings
- Creating realistic data variation
- Ensuring correct aggregation in Power BI

---


## 🎥 Interactive Dashboard Demo
[Watch the Demo Video](https://drive.google.com/file/d/1szjri-fZ6qGKTXZJQjFMIht-zJwcMy7B/view?usp=sharing)



---

## 📁 Project Structure

- **data/**
  - Contains the final dataset with realistic variations (weekend demand, cancellations, pricing)

- **sql/**
  - SQL queries and views used to solve business problems and extract insights

- **dashboard/**
  - Power BI dashboard file with interactive visualizations and KPIs

- **images/**
  - Dashboard screenshots used for preview and documentation

- **README.md**
  - Project documentation including business problems, insights, and recommendations



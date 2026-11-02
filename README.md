# Airline Booking & Revenue Analytics

An end-to-end data analytics project exploring airline bookings, ticket sales, payment methods, refunds, route performance, and fare distribution using SQL, Python, and Power BI.

## Project Overview

The objective of this project is to analyse airline booking and financial data to identify booking trends, understand revenue performance, compare route and cabin-class activity, and evaluate payment and refund patterns.

The project uses a synthetic airline database and demonstrates a practical analytics workflow, from data validation and SQL querying to Python visualisation and Power BI reporting.

## Tools & Technologies

- **SQL (SQLite):** Data exploration, joins, aggregations, filtering, and business analysis.
- **Python:** Pandas and Matplotlib for data analysis and visualisation.
- **Power BI:** KPI reporting and interactive dashboard development.
- **GitHub:** Project documentation and version control.

## Dataset Overview

The analysis uses a synthetic airline database containing multiple related tables.

| Table | Records |
|---|---:|
| Bookings | 35,000 |
| Tickets | 70,000 |
| Ticket Flights | 100,000 |
| Flights | 300 |
| Flight Instances | 1,000 |
| Payments | 35,000 |
| Refunds | 500 |

All data is synthetic and intended for portfolio and educational purposes.

## Analysis Performed

### 1. Booking Analysis
- Analysed booking volume and monthly booking trends.
- Checked missing values and duplicate records.
- Examined booking date patterns.

### 2. Revenue & Payment Analysis
- Calculated gross successful payments.
- Compared payment methods.
- Reconciled payments, refunds, and net revenue.

### 3. Refund Analysis
- Analysed refund amounts and refund reasons.
- Checked whether refunds were linked to successful payments.

### 4. Route & Airline Analysis
- Compared ticket activity across airlines and routes.
- Identified high-volume airline-route combinations.

### 5. Cabin-Class Analysis
- Compared average fares across Economy, Premium Economy, Business, and First Class.

## Key Findings

- The dataset contains 35,000 bookings and 70,000 tickets.
- Monthly bookings reached a peak of approximately 1,192 in March 2021.
- Card was the most frequently used payment method.
- Gross successful payments totalled approximately 30.94 million in dataset currency units.
- Recorded refunds totalled approximately 265.81 thousand.
- Net payments after recorded refunds were approximately 30.68 million.
- Recorded refunds represented approximately 0.86% of gross successful payments.
- Economy accounted for the largest number of ticket-flight records, while First Class had the highest average fare.

*Note: Financial values are presented in the dataset's original units because no verified currency denomination is specified.*

## Power BI Dashboard

The Power BI dashboard includes:

- Total Bookings
- Total Tickets
- Gross Successful Payments
- Recorded Refund Amount
- Monthly Airline Booking Trend
- Payment Methods Analysis
- Refund Reasons Analysis
- Top Airlines by Ticket Activity
- Average Fare by Cabin Class

The dashboard is available as a PDF in this repository.

## Project Structure

```text
airline-booking-revenue-analysis/
│
├── sql/
│   └── SQL analysis files
│
├── python/
│   └── Python analysis files
│
├── images/
│   └── Project visualisations
│
├── Airline_Booking_Revenue_Dashboard.pdf
│
└── README.md
```

## Skills Demonstrated

- SQL querying and relational data analysis
- Data cleaning and validation
- Exploratory Data Analysis (EDA)
- Revenue reconciliation
- Business KPI analysis
- Data visualisation
- Dashboard development
- Analytical problem-solving

## Project Status

**Core analysis and dashboard completed.**

This project demonstrates an end-to-end approach to analysing airline booking and revenue data using SQL, Python, and Power BI.

## Author

**Khushish Agarwalla**

- GitHub: [krishnaagarwalla21-cloud](https://github.com/krishnaagarwalla21-cloud)
- LinkedIn: [Khushish Agarwalla](https://www.linkedin.com/in/khushish-agarwalla-4369a0247/)


# CareLoop – Healthcare Appointment No-Show Prediction

## Project Overview
CareLoop is a healthcare analytics and machine learning project
designed to predict patient appointment no-shows.

## Dataset
- Original appointments: 1,020 records
- Clean appointments: 990 records
- Rejected records: 30
- Clinics: 8
- Follow-up notes: 30

## Data Cleaning
Rejected records:
- Exact duplicates: 20
- Missing status: 4
- Invalid or missing date: 6

## Feature Engineering
Features include:
- Lead days
- Appointment weekday
- Appointment month
- Weekend indicator
- Clinic city and tier

## Machine Learning
Models evaluated:
- Logistic Regression
- Random Forest

Best reported validation F1:
- Logistic Regression: 0.518
- Best threshold: 0.5

## Database
SQLite database: careloop.db

Tables:
- appointments
- clinics
- followup_notes

## SQL Deliverables
- load_data.sql
- 02_queries.sql

## Project Outputs
- appointments_clean.csv
- clinics_enriched.csv
- rejected_rows.json

## Conclusion
The project demonstrates data ingestion, validation,
cleaning, feature engineering, SQL analysis and
machine learning for healthcare appointment management.

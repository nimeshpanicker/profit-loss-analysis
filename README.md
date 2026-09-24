# Hospital Emergency Room Analysis Dashboard

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Healthcare Analytics](https://img.shields.io/badge/Healthcare-Analytics-blue)
![Data Analytics](https://img.shields.io/badge/Data%20Analytics-Portfolio-orange)
![Status](https://img.shields.io/badge/Project-Completed-success)

> An interactive Power BI healthcare analytics project analysing Emergency Room
> patient volume, waiting time, satisfaction, admission outcomes, referral
> patterns, demographics, and demand by day and hour.

# 📊 Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Patients | **9,216** |
| Average Wait Time | **35.3 minutes** |
| Patient Satisfaction Score | **4.99** |
| Patients Referred | **3,816** |
| Patients Seen Within 30 Minutes | **59.3%** |
| Patients Missing 30-Minute Target | **40.7%** |
| Admitted Patients | **4,612** |
| Not Admitted | **4,604** |

---

# 📈 Key Findings

## 🏥 Admission Analysis

| Admission Status | Patients | % of Total |
|---|---:|---:|
| Admitted | **4,612** | **50.04%** |
| Not Admitted | **4,604** | **49.96%** |

Admission outcomes are almost evenly split, with approximately half of the Emergency Room visits resulting in admission.

---

## 👥 Age Group Analysis

| Age Group | Patients |
|---|---:|
| 0–9 | **1,056** |
| 40–49 | **1,135** |
| 50–59 | **1,151** |
| 70–79 | **1,153** |
| 60–69 | **1,154** |
| 10–19 | **1,179** |
| 20–29 | **1,188** |
| 30–39 | **1,200** |

The **30–39 age group** is the largest reported patient cohort with **1,200 patients**, followed by the **20–29 age group** with **1,188 patients**.

---

## 🏥 Department Referral Analysis

| Referral Category | Patients |
|---|---:|
| None | **5,400** |
| General Practice | **1,840** |
| Orthopedics | **995** |
| Physiotherapy | **276** |
| Cardiology | **248** |
| Neurology | **~200** |
| Gastroenterology | **~200** |
| Renal | **~100** |

A total of **5,400 patients (58.6%)** required no department referral. Among referred patients, **General Practice** and **Orthopedics** were the largest referral destinations.

---

## ⏱️ Wait-Time Analysis

| Wait-Time Metric | Result |
|---|---:|
| Average Wait Time | **35.3 minutes** |
| Seen Within 30 Minutes | **59.3%** |
| Missed 30-Minute Target | **40.7%** |

The average patient wait time was **35.3 minutes**. The dashboard shows that **59.3%** of patients were seen within the 30-minute target, while **40.7%** waited longer than the target.

---

## ⚥ Gender Analysis

| Gender | Share of Patients |
|---|---:|
| Male | **51.05%** |
| Female | **48.69%** |
| Not Confirmed | **0.2%** |

The patient population is close to evenly split between male and female patients.

---

## 🌎 Race / Ethnicity Distribution

| Race / Ethnicity | Patients |
|---|---:|
| White | **2,571** |
| African American | **1,951** |
| Two or More Races | **1,557** |
| Asian | **1,060** |
| Declined to Identify | **1,030** |
| Pacific Islander | **~500** |
| Native American / Alaska Native | **~500** |

The largest reported racial group is **White**, followed by **African American**, **Two or More Races**, and **Asian** patients.

---

## 📅 Patient Volume by Day

| Day | Patients |
|---|---:|
| Monday | **1,314** |
| Tuesday | **1,305** |
| Wednesday | **1,260** |
| Thursday | **1,332** |
| Friday | **1,310** |
| Saturday | **1,377** |
| Sunday | **1,318** |

**Saturday** is the highest-volume day with **1,377 patients**, followed by **Thursday with 1,332** and **Sunday with 1,318**. Wednesday records the lowest volume with **1,260 patients**.

---

## 🕐 Patient Volume by Hour

The dashboard uses 2-hour time bands to analyze patient demand throughout the week.

| Hour Band | Analysis |
|---|---|
| 23:00–24:00 | **Highest combined volume: 808 patients** |
| 07:00–08:00 | **Second-highest combined volume: 790 patients** |

The **23:00–24:00** period has the highest combined patient volume across the week, followed by **07:00–08:00**.

These patterns can be useful when reviewing staffing coverage and resource allocation.

---

# 💡 Business Insights

### 1. Wait-Time Performance Requires Attention

Only **59.3%** of patients were seen within the 30-minute target, while **40.7%** waited longer. The average wait time was **35.3 minutes**, highlighting an opportunity to review patient-flow and triage processes.

### 2. Admission Demand Is Almost Evenly Split

With **4,612 admitted patients** and **4,604 not admitted patients**, the admission distribution is almost evenly divided at approximately **50% each**.

This provides a useful baseline for understanding the relationship between Emergency Room activity and downstream inpatient capacity.

### 3. Referral Demand Is Concentrated

**5,400 patients**, representing **58.6%** of all visits, required no department referral.

Among patients requiring referrals, **General Practice** recorded the highest volume with **1,840 patients**, followed by **Orthopedics with 995 patients**.

### 4. Saturday Has the Highest Patient Volume

Saturday recorded the highest total patient volume with **1,377 patients**, followed by Thursday and Sunday.

This indicates that day-of-week patterns can be useful when reviewing staffing and resource allocation.

### 5. Late-Night and Early-Morning Periods Show Higher Demand

The **23:00–24:00** hour band recorded the highest combined weekly volume, while **07:00–08:00** was the second-highest.

These time periods can be examined further when planning staffing coverage.

### 6. The 30–39 Age Group Is the Largest Patient Cohort

Patients aged **30–39** represent the largest age group with **1,200 patients**, followed by the **20–29** group with **1,188 patients**.

### 7. Gender Distribution Is Relatively Balanced

Male patients account for **51.05%** of visits, while female patients account for **48.69%**, resulting in a relatively balanced gender distribution.

> **Note:** These findings describe patterns observed in the dataset and should not by themselves be interpreted as causal relationships.

---

# 💡 Business Recommendations

Based on the observed operational patterns, the project identifies the following areas for further hospital operations analysis.

## ⏱️ Patient-Flow & Wait-Time Management

Review:

- Patient-flow processes
- Triage procedures
- Causes of wait times exceeding 30 minutes
- Waiting-time patterns by day and hour
- Potential bottlenecks during high-volume periods

## 👥 Staffing & Resource Planning

Use:

- Day-of-week patient-volume patterns
- Hour-band demand
- Peak-period analysis
- Admission volumes
- Referral volumes

to support staffing and resource allocation discussions.

## 🏥 Referral Capacity

Monitor referral capacity in:

- General Practice
- Orthopedics
- Physiotherapy
- Cardiology
- Neurology
- Gastroenterology
- Renal

General Practice and Orthopedics represent the largest referral destinations among patients requiring department referrals.

## 🛏️ Inpatient Capacity Planning

Use Emergency Room admission volume as an operational input when discussing:

- Inpatient bed capacity
- Admission demand
- Hospital resource planning
- ER-to-inpatient patient flow

The nearly 50/50 admission split provides a useful baseline for capacity planning.

## ⭐ Patient Experience

Continue monitoring:

- Patient satisfaction
- Average wait time
- Percentage meeting the 30-minute target
- Wait-time trends
- Patient-flow changes

This can help assess the relationship between operational performance and patient experience.

## 📊 Dashboard & Data Monitoring

Continue improving:

- KPI monitoring
- Monthly trend analysis
- Peak-hour analysis
- Department-level analysis


- Automated narrative validation
- Exact-value verification against rounded dashboard labels

> **Note:** The dashboard's Key Takeaways narrative contained a day-ranking discrepancy. The validated charted totals identify **Saturday (1,377), Thursday (1,332), and Sunday (1,318)** as the highest-volume days. Dashboard-generated narrative text should therefore be cross-checked against the underlying visual data.


# 🏥 Hospital Emergency Room Analysis Dashboard

**Repository:** `hospital-er-analysis`

**Description:** Power BI Healthcare Analytics Dashboard analysing Emergency Room patient volume, wait times, admissions, referrals, demographics, and peak demand periods.

---

## 📁 Project Structure

```text
hospital-er-analysis/
│
├── README.md
│
├── data/
│   └── Hospital_ER_Data.csv
│
├── dashboard/
│   └── Healthcare1.pdf
│
└── reports/
    └── Hospital_ER_Dashboard_Project_Report.pdf


🏥 Hospital Emergency Room Analysis Dashboard
Project Overview
↓
Objectives
↓
Dataset
↓
Tools
↓
Dashboard
↓
KPIs
↓
Insights
↓
Recommendations
↓
Project Structure
↓
Skills
↓
Future Improvements
↓
Author


# Hospital Emergency Room Analysis Dashboard

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Healthcare Analytics](https://img.shields.io/badge/Healthcare-Analytics-blue)
![Data Analytics](https://img.shields.io/badge/Data%20Analytics-Portfolio-orange)
![Status](https://img.shields.io/badge/Project-Completed-success) 
 
> An interactive Power BI healthcare analytics project analysing Emergency Room 
> patient volume, waiting time, satisfaction, admission outcomes, referral 
> patterns, demographics, and demand by day and hour. 
 
# 📊 Key Performance Indicators 
 
| KPI | Result | 
|---|---:| 
| Total Patients | **9,216** | 
| Average Wait Time | **35.3 minutes** | 
| Patient Satisfaction Score | **4.99** | 
| Patients Referred | **3,816** | 
| Patients Seen Within 30 Minutes | **59.3%** | 
| Patients Missing 30-Minute Target | **40.7%** | 
| Admitted Patients | **4,612** | 
| Not Admitted | **4,604** | 
 
--- 
 
# 📈 Key Findings 
 
## 🏥 Admission Analysis 
 
| Admission Status | Patients | % of Total | 
|---|---:|---:| 
| Admitted | **4,612** | **50.04%** | 
| Not Admitted | **4,604** | **49.96%** | 
 
Admission outcomes are almost evenly split, with approximately half of the Emergency Room visits resulting in admission. 
 
--- 
 
## 👥 Age Group Analysis 
 
| Age Group | Patients | 
|---|---:| 
| 0–9 | **1,056** | 
| 40–49 | **1,135** | 
| 50–59 | **1,151** | 
| 70–79 | **1,153** | 
| 60–69 | **1,154** | 
| 10–19 | **1,179** | 
| 20–29 | **1,188** | 
| 30–39 | **1,200** | 
 
The **30–39 age group** is the largest reported patient cohort with **1,200 patients**, followed by the **20–29 age group** with **1,188 patients**. 
 
--- 
 
## 🏥 Department Referral Analysis 
 
| Referral Category | Patients | 
|---|---:| 
| None | **5,400** | 
| General Practice | **1,840** | 
| Orthopedics | **995** | 
| Physiotherapy | **276** | 
| Cardiology | **248** | 
| Neurology | **~200** | 
| Gastroenterology | **~200** | 
| Renal | **~100** | 
 
A total of **5,400 patients (58.6%)** required no department referral. Among referred patients, **General Practice** and **Orthopedics** were the largest referral destinations. 
 
--- 
 
## ⏱️ Wait-Time Analysis 
 
| Wait-Time Metric | Result | 
|---|---:| 
| Average Wait Time | **35.3 minutes** | 
| Seen Within 30 Minutes | **59.3%** | 
| Missed 30-Minute Target | **40.7%** | 
 
The average patient wait time was **35.3 minutes**. The dashboard shows that **59.3%** of patients were seen within the 30-minute target, while **40.7%** waited longer than the target. 
 
--- 
 
## ⚥ Gender Analysis 
 
| Gender | Share of Patients | 
|---|---:| 
| Male | **51.05%** | 
| Female | **48.69%** | 
| Not Confirmed | **0.2%** | 
 
The patient population is close to evenly split between male and female patients. 
 
--- 
 
## 🌎 Race / Ethnicity Distribution 
 
| Race / Ethnicity | Patients | 
|---|---:| 
| White | **2,571** | 
| African American | **1,951** | 
| Two or More Races | **1,557** | 
| Asian | **1,060** | 
| Declined to Identify | **1,030** | 
| Pacific Islander | **~500** | 
| Native American / Alaska Native | **~500** | 
 
The largest reported racial group is **White**, followed by **African American**, **Two or More Races**, and **Asian** patients. 
 
--- 
 
## 📅 Patient Volume by Day 
 
| Day | Patients | 
|---|---:| 
| Monday | **1,314** | 
| Tuesday | **1,305** | 
| Wednesday | **1,260** | 
| Thursday | **1,332** | 
| Friday | **1,310** | 
| Saturday | **1,377** | 
| Sunday | **1,318** | 
 
**Saturday** is the highest-volume day with **1,377 patients**, followed by **Thursday with 1,332** and **Sunday with 1,318**. Wednesday records the lowest volume with **1,260 patients**. 
 
--- 
 
## 🕐 Patient Volume by Hour 
 
The dashboard uses 2-hour time bands to analyze patient demand throughout the week. 
 
| Hour Band | Analysis | 
|---|---| 
| 23:00–24:00 | **Highest combined volume: 808 patients** | 
| 07:00–08:00 | **Second-highest combined volume: 790 patients** | 
 
The **23:00–24:00** period has the highest combined patient volume across the week, followed by **07:00–08:00**. 
 
These patterns can be useful when reviewing staffing coverage and resource allocation. 
 
--- 
 
# 💡 Business Insights 
 
### 1. Wait-Time Performance Requires Attention 
 
Only **59.3%** of patients were seen within the 30-minute target, while **40.7%** waited longer. The average wait time was **35.3 minutes**, highlighting an opportunity to review patient-flow and triage processes. 
 
### 2. Admission Demand Is Almost Evenly Split 
 
With **4,612 admitted patients** and **4,604 not admitted patients**, the admission distribution is almost evenly divided at approximately **50% each**. 
 
This provides a useful baseline for understanding the relationship between Emergency Room activity and downstream inpatient capacity. 
 
### 3. Referral Demand Is Concentrated 
 
**5,400 patients**, representing **58.6%** of all visits, required no department referral. 
 
Among patients requiring referrals, **General Practice** recorded the highest volume with **1,840 patients**, followed by **Orthopedics with 995 patients**. 
 
### 4. Saturday Has the Highest Patient Volume 
 
Saturday recorded the highest total patient volume with **1,377 patients**, followed by Thursday and Sunday. 
 
This indicates that day-of-week patterns can be useful when reviewing staffing and resource allocation. 
 
### 5. Late-Night and Early-Morning Periods Show Higher Demand 
 
The **23:00–24:00** hour band recorded the highest combined weekly volume, while **07:00–08:00** was the second-highest. 
 
These time periods can be examined further when planning staffing coverage. 
 
### 6. The 30–39 Age Group Is the Largest Patient Cohort 
 
Patients aged **30–39** represent the largest age group with **1,200 patients**, followed by the **20–29** group with **1,188 patients**. 
 
### 7. Gender Distribution Is Relatively Balanced 
 
Male patients account for **51.05%** of visits, while female patients account for **48.69%**, resulting in a relatively balanced gender distribution. 
 
> **Note:** These findings describe patterns observed in the dataset and should not by themselves be interpreted as causal relationships. 
 
--- 
 
# 💡 Business Recommendations 
 
Based on the observed operational patterns, the project identifies the following areas for further hospital operations analysis. 
 
## ⏱️ Patient-Flow & Wait-Time Management 
 
Review: 
 
- Patient-flow processes 
- Triage procedures 
- Causes of wait times exceeding 30 minutes 
- Waiting-time patterns by day and hour 
- Potential bottlenecks during high-volume periods 
 
## 👥 Staffing & Resource Planning 
 
Use: 
 
- Day-of-week patient-volume patterns 
- Hour-band demand 
- Peak-period analysis 
- Admission volumes 
- Referral volumes 
 
to support staffing and resource allocation discussions. 
 
## 🏥 Referral Capacity 
 
Monitor referral capacity in: 
 
- General Practice 
- Orthopedics 
- Physiotherapy 
- Cardiology 
- Neurology 
- Gastroenterology 
- Renal 
 
General Practice and Orthopedics represent the largest referral destinations among patients requiring department referrals. 
 
## 🛏️ Inpatient Capacity Planning 
 
Use Emergency Room admission volume as an operational input when discussing: 
 
- Inpatient bed capacity 
- Admission demand 
- Hospital resource planning 
- ER-to-inpatient patient flow 
 
The nearly 50/50 admission split provides a useful baseline for capacity planning. 
 
## ⭐ Patient Experience 
 
Continue monitoring: 
 
- Patient satisfaction 
- Average wait time 
- Percentage meeting the 30-minute target 
- Wait-time trends 
- Patient-flow changes 
 
This can help assess the relationship between operational performance and patient experience. 
 
## 📊 Dashboard & Data Monitoring 
 
Continue improving: 
 
- KPI monitoring 
- Monthly trend analysis 
- Peak-hour analysis 
- Department-level analysis 
 
 
- Automated narrative validation 
- Exact-value verification against rounded dashboard labels 
 
> **Note:** The dashboard's Key Takeaways narrative contained a day-ranking discrepancy. The validated charted totals identify **Saturday (1,377), Thursday (1,332), and Sunday (1,318)** as the highest-volume days. Dashboard-generated narrative text should therefore be cross-checked against the underlying visual data. 
 
 
# 🏥 Hospital Emergency Room Analysis Dashboard 
 
**Repository:** `hospital-er-analysis` 
 
**Description:** Power BI Healthcare Analytics Dashboard analysing Emergency Room patient volume, wait times, admissions, referrals, demographics, and peak demand periods. 
 
--- 
 
## 📁 Project Structure 
 
```text 
hospital-er-analysis/ 
│ 
├── README.md 
│ 
├── data/ 
│   └── Hospital_ER_Data.csv 
│ 
├── dashboard/ 
│   └── Healthcare1.pdf 
│ 
└── reports/ 
    └── Hospital_ER_Dashboard_Project_Report.pdf 
 
 
🏥 Hospital Emergency Room Analysis Dashboard 
Project Overview 
↓ 
Objectives 
↓ 
Dataset 
↓ 
Tools 
↓ 
Dashboard 
↓ 
KPIs 
↓ 
Insights 
↓ 
Recommendations 
↓ 
Project Structure 
↓ 
Skills 
↓ 
Future Improvements 
↓ 
Author 
Give me readme in thhe above uploaded format

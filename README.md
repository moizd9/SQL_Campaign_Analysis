# 📈 Marketing Campaign Performance Analysis using SQL

## 🗂️ Project Overview
This project analyzes a large marketing campaign dataset to derive actionable insights related to campaign effectiveness, customer targeting, channel performance, and return on investment (ROI).

Using MySQL for data exploration, the project aims to answer critical marketing questions such as:
- Which campaign types have the highest ROI?
- Which customer segments are most engaged?
- Which channels drive the best cost-to-conversion outcomes?
- When is the best month to launch marketing campaigns?
- and many more...

---

## 📄 Dataset Details

- **Source**: [Kaggle Dataset]
- **Size**: ~200,000 records
- **Duration**: 2 years
- **Columns**:
  - `Campaign_ID`, `Company`, `Campaign_Type`, `Target_Audience`, `Duration`, `Channels_Used`, `Conversion_Rate`, `Acquisition_Cost`, `ROI`, `Location`, `Language`, `Clicks`, `Impressions`, `Engagement_Score`, `Customer_Segment`, `Date`

---

## 🛠️ Tools & Technologies

| **MySQL Workbench** | Data cleaning, SQL querying, analysis |

---

## 🔍 Key SQL Analysis Performed

- **Campaign Performance Analysis**:
  - Average ROI by Campaign Type
  - Average Conversion Rate by Channel
  - Average Engagement Score by Audience
- **Cost and ROI Analysis**:
  - Average Acquisition Cost by Channel (cleaned `$` and `,`)
- **Funnel Analysis**:
  - Click-Through Rate (CTR) by Campaign Type
- **Time-Series Analysis**:
  - Monthly Trends of Campaign Launches
  - Best Month to Launch Campaigns Based on ROI
- **Advanced Metrics**:
  - Channel Effectiveness by Customer Segment
  - High ROI Campaigns (ROI > 1.5)
  - Low Performing Campaigns (ROI < 1)

---

## ✨ Key Insights

- **Influencer campaigns** showed the highest average ROI across all channels.
- **Email marketing** had the highest conversion rate.
- **Men aged 18-24** were the most engaged audience segment.
- **September** emerged as the best month to launch campaigns for maximizing ROI.
- **Tech Enthusiasts and Foodies** were highly responsive across multiple channels.

---


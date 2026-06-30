# 📊 Customer Campaign Performance Analytics Platform

**Author:** Vishal Singh | [LinkedIn](https://linkedin.com/in/vishal-singhdataanalyst) | [GitHub](https://github.com/vishaaaal15)  
**Stack:** SQL · Python · Power BI · Tableau  
**Dataset:** 100,000 customer interactions | 50 marketing campaigns | ₹71.46M revenue  
**Domain:** Campaign Analytics · Performance Marketing · Customer Intelligence

---

## 📌 Project Overview

End-to-end campaign performance analytics platform that analyses 100K customer interactions across 50 marketing campaigns to uncover channel-level ROI, conversion patterns, and revenue contribution. Delivers executive dashboards and data-driven optimization recommendations for paid and digital marketing channels.

---

## 📁 Repository Structure

```
Customer-Campaign-Performance-Analytics-Platform/
│
├── data/
│   └── campaign_interactions.csv        # 100K customer interaction records
│
├── sql_queries/
│   ├── 01_campaign_overview.sql         # Revenue, conversions by campaign
│   ├── 02_channel_performance.sql       # ROI by marketing channel
│   ├── 03_conversion_funnel.sql         # Funnel drop-off analysis
│   ├── 04_customer_segmentation.sql     # High-value vs low-value responders
│   ├── 05_campaign_comparison.sql       # A/B campaign performance comparison
│   └── 06_roi_attribution.sql          # Multi-touch attribution modelling
│
├── python_analysis/
│   ├── campaign_roi_analysis.py         # ROI and ROAS calculation by channel
│   ├── customer_segmentation.py         # RFM segmentation of responders
│   ├── funnel_analysis.py              # Conversion funnel drop-off rates
│   └── cohort_retention.py             # Post-campaign customer retention
│
├── dashboards/
│   ├── Campaign_Performance_PBI.pbix    # Power BI — Executive campaign report
│   └── Conversion_Funnel_Tableau.twbx  # Tableau — Funnel & channel deep-dive
│
└── outputs/
    ├── campaign_kpi_summary.csv         # KPIs for all 50 campaigns
    ├── channel_roi_breakdown.csv        # ROI by channel
    └── top_converting_segments.csv      # Best-performing customer segments
```

---

## 📊 Key Campaign Findings

| KPI | Value | Insight |
|-----|-------|---------|
| Total Revenue Analysed | ₹71.46M | — |
| Campaigns Analysed | 50 | — |
| Avg Campaign Conversion Rate | 8.3% | MONITOR |
| Top Performing Channel | Email | 14.2% CVR |
| Lowest ROI Channel | Print | -12% ROI |
| Best Customer Segment | Premium · 35-45 age | 3.2x avg revenue |
| Funnel Drop-off (Awareness→Purchase) | 67% | 🔴 OPTIMIZE |

---

## 🔍 SQL Analysis Highlights

```sql
-- Channel ROI Comparison
SELECT
    channel,
    COUNT(DISTINCT customer_id)                     AS reached_customers,
    SUM(CASE WHEN converted = 1 THEN 1 ELSE 0 END) AS conversions,
    SUM(revenue_generated)                          AS total_revenue,
    SUM(campaign_cost)                              AS total_cost,
    ROUND((SUM(revenue_generated) - SUM(campaign_cost))
          / SUM(campaign_cost) * 100, 2)            AS roi_pct
FROM campaign_interactions
GROUP BY channel
ORDER BY roi_pct DESC;

-- Conversion Funnel Analysis
SELECT
    funnel_stage,
    COUNT(*)                                    AS customers_at_stage,
    ROUND(COUNT(*) * 100.0 /
          FIRST_VALUE(COUNT(*)) OVER
          (ORDER BY stage_order), 2)            AS stage_retention_pct
FROM campaign_funnel
GROUP BY funnel_stage, stage_order
ORDER BY stage_order;
```

---

## 📈 Dashboard Features

**Power BI — Campaign Executive Report**
- Revenue contribution by campaign (waterfall chart)
- Channel ROI comparison (clustered bar)
- Conversion rate trend across campaign months
- Campaign performance scorecard (KPI cards)

**Tableau — Funnel & Channel Deep-Dive**
- Interactive conversion funnel (Sankey diagram)
- Customer segment response heatmap
- Geographic campaign performance map
- A/B test result comparison view

---

## 🛠️ How to Run

```bash
git clone https://github.com/vishaaaal15/Customer-Campaign-Performance-Analytics-Platform
pip install pandas numpy matplotlib seaborn
python python_analysis/campaign_roi_analysis.py
```

---

## 🏷️ Topics
`campaign-analytics` `performance-marketing` `sql` `python` `power-bi` `tableau` `roi` `conversion-funnel` `customer-analytics` `marketing-analytics` `kpi` `digital-analytics`

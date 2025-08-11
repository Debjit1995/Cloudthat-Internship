# Cloudthat-Internship
Urban Logistics performance and prediction dashboard

# 🚚 Urban Logistics Performance & Prediction Dashboard  

## 📊 Project Overview  
This project analyzes delivery performance using merged logistics datasets and presents insights through an interactive **Power BI dashboard**.  
It includes KPIs, visual analytics, and **Generative AI–powered executive summaries** to support strategic decision-making.  

---

## 📂 Dataset Overview  
- **Source:** Merged dataset from **Orders**, **Customers**, and **Courier** data.  
- **Structure:**  
  - `order_id` – Unique order identifier  
  - `order_purchase_timestamp` – Date of order  
  - `customer_city` / `region` – Delivery location  
  - `courier` – Assigned delivery partner  
  - `delivery_duration_days` – Time taken to deliver  
  - `is_late` – Late delivery flag (0 = On time, 1 = Late)  
  - `wait_time_days` – Idle time before dispatch  

---

## 🧹 Data Cleaning & Feature Engineering  
- Removed **duplicates** and **null values**.  
- Standardized date formats.  
- Calculated new fields:  
  - **Delivery Duration** = `delivery_date - order_date`  
  - **Idle Time** = `dispatch_date - order_date` *(estimated)*  
- Encoded categorical values for analytics.  
- Created **binary late delivery flag** (`is_late`).  

---

## 🤖 Machine Learning Models  
- **Goal:** Predict likelihood of late deliveries.  
- **Models Tested:**  
  - Logistic Regression  
  - Random Forest  
  - XGBoost  
- **Best Performer:** `Random Forest` – highest accuracy & recall.  
- **Key Features:** Delivery duration, idle time, courier, region.  

---

## 💬 Generative AI Component  
Used **ChatGPT** to produce **weekly executive summaries** and **recommendations** from aggregated performance data.  

**Sample Prompt:**  
> Summarize the weekly delivery performance by highlighting on-time %, top couriers, and late delivery trends. Provide three operational recommendations.  

---

## 📌 Dashboard Features  
- **Filters:** City, Region, Courier, Delivery vs Pickup  
- **KPIs:**  
  - On-time %  
  - Average Delivery Duration  
  - Idle Time  
- **Visuals:**  
  - 📈 Line Charts – Weekly deliveries, delays  
  - 🗺 Heatmaps – Geospatial delay density  
  - 📊 Bar Charts – Courier performance, route load  
- **AI Insights Section** – Auto-generated summaries & recommendations  

---

## 🏆 Summary & Recommendations  
- Maintain high-performing couriers & regions.  
- Optimize routes in late-delivery hotspots.  
- Reduce idle time via better dispatch planning.  
- Monitor weekly KPIs for quick corrective actions.  

---

## 📁 Files in Repository  
- `merged_orders_customers.csv` – Cleaned dataset for analysis  
- `dashboard.pbix` – Power BI dashboard file  
- `ml_model.ipynb` – Machine learning training notebook  
- `ai_prompts.txt` – Prompts used for Generative AI insights  


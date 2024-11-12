# **FLO_SQL_Server_to_Power_BI**

## **Project Overview**
In this project, I connected an SQL Server database to Power BI to create an interactive dashboard for data visualization. The goal was to visualize real-time data by using Power BI's **Direct Query** feature, ensuring the dashboard always reflects the latest data.

---

## **Steps to Build the Dashboard**

### **1. Data Connection**
First, I opened the "Get Data" menu in Power BI and selected "SQL Server". I entered the server details and chose the relevant table. The **Direct Query** option was selected to enable real-time data refresh, ensuring that any changes in the database would be immediately reflected in the Power BI dashboard.

![Data Connection](https://github.com/user-attachments/assets/9463bb80-256e-49cf-ae9f-571bab094cd4)

---

### **2. Creating Views in SQL Server**
To optimize the data for visualization, I created views directly in SQL Server. This allowed me to summarize data and streamline the process before importing it into Power BI.

Here, I used the **Create View** command to simplify the process:
- Created a view using the `CREATE VIEW` statement to organize data efficiently.
  
![Creating Views](https://github.com/user-attachments/assets/9d4a3867-1664-48c0-9128-b884a47566b5)

---

### **3. Establishing Relationships**
In Power BI, I established relationships between tables to ensure that all imported data is properly linked and can be analyzed cohesively. This step is crucial for accurate visualizations and data integrity.

![Table Connections](https://github.com/user-attachments/assets/0ef546de-cc81-42f1-b49b-e44bd2113e0d)

---

### **4. Transferring Data**
Depending on the analysis needs, I created additional tables in SQL Server and imported them into Power BI using the **Direct Query** method. This ensured the data was always up-to-date without the need for manual refreshes.

![Data Transfer](https://github.com/user-attachments/assets/d98eb837-6856-4ccc-9413-5b0892d30ba3)

---

## **Dashboard Design**

### **5. Key Performance Indicators (KPIs)**
To highlight the most important metrics, I prepared a series of KPIs:
- **Amount**
- **Total Revenue**
- **Average Recency**
- **Maximum Day Difference Frequency**
- **Average Revenue**

While "Amount" and "Total Revenue" are static values, the rest are interactive, allowing users to drill down into specific data points as needed.

![KPIs](https://github.com/user-attachments/assets/045d9efd-6b21-4226-81e3-84334d3324a7)

---

### **6. Slicers for Filtering**
On the right side of the dashboard, I added slicers to filter the data by years and months. The slicers use a transparent background and corporate colors to match the overall design, providing a smooth and user-friendly experience.

![Slicer](https://github.com/user-attachments/assets/d530a34f-d179-40b3-80ad-71d42685d4f2)

---

### **7. Visuals Overview**

- **Tree Map**: Placed on the bottom-right, showing shopping preferences.
  
  ![Tree Map](https://github.com/user-attachments/assets/d3c17577-3719-427a-8d29-f7fb2095ddfe)

- **Donut Chart**: Located in the center, it shows the distribution of orders by channel.
- **Customer Table**: Displays customers with the highest number of purchases.

  ![Order Channel & Customer Table](https://github.com/user-attachments/assets/d21328c1-56f2-4484-81c8-c4699409c0f3)

- **Line and Stacked Column Chart**: In the middle-bottom section, it displays the count of online channels and the sum of online average revenue by channel.

  ![Online Channel Analysis](https://github.com/user-attachments/assets/d62c4467-a785-404f-9a12-6ef282d61c5e)

- **Line Chart**: On the right-bottom, a line chart shows changes in offline revenue by year, month, and day.

  ![Offline Revenue](https://github.com/user-attachments/assets/28533fce-e3c0-43b0-b887-99f0a40900a6)

---

### **8. Final Dashboard**
After completing all the visualizations and configurations, the final dashboard was ready, providing a comprehensive overview of key business metrics and trends.

![Final Dashboard](https://github.com/user-attachments/assets/9ac60e2c-fe77-4dbf-a625-7188d60dec6f)

---

## **Conclusion**
This project demonstrates how to effectively connect SQL Server to Power BI using the **Direct Query** option and create an interactive dashboard to monitor business performance. With the use of KPIs, charts, and slicers, users can explore data dynamically to gain valuable insights.

### **Technologies Used**
- **SQL Server**
- **Power BI**

---


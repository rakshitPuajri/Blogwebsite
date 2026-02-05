---
layout: post.njk
title: Zero-Copy Data Sharing with Delta Sharing. 
date: 2026-02-05
description: A practical walkthrough of sharing governed data products using Delta Sharing and consuming them directly in Power BI without ETL. 
tags:
  - SAP Data Products
  - Delta lake sharing 
---

In my previous article on [ Data Products ](https://rakshitpujari-blogs.vercel.app/posts/01-Data-product/), we discussed how data products change the way organizations publish, govern, and consume data, moving from brittle ETL-centric pipelines to self-service, API-like access patterns that encourage reuse, interoperability, and agility. 
Now we extend that to the framework that powers live, open, cross-platform data access "Delta Sharing". Delta Sharing enables secure, real-time data consumption with no data movement, no redundancy, and no brittle ETL pipelines


## What is Delta Sharing?

At its core, Delta Sharing is an open protocol for secure data sharing that lets data providers and data consumers exchange large datasets without copying or moving them. It’s a REST-based open standard that supports access by a wide range of tools and languages from Spark to Python (Pandas), BI tools like Power BI and Tableau,  across clouds and platforms.

Unlike traditional approaches that required extracting data from source systems into analytical platforms via ETL, Delta Sharing allows readers to query or stream data directly from its source location, seeing updates in near real-time.

 {% image "src/assets/images/Delatsharing.png", "Delta Sharing", "100vw" %}
  
## Primary goal of delta share

Delta sharing protocol was designed keeping following four primary goals in mind

* Share live data directly without copying it
* Support a wide range of clients
* Strong security, auditing and governance
* Scale to massive datasets

## How Delta Sharing Aligns with Data Product Principles ?

This table shows how Delta Sharing's goals map directly to key data product principles:

| Delta Sharing Goal |  | Data Product Principle |
|--------------------|---|------------------------|
| Share live data    | → | Single source of truth |
| Multi-client use   | → | Interoperability & self-service |
| Security & auditing| → | Trust & governance |
| Massive scale      | → | Reliability & scalability |


## How does it work in real?

In SAP Datasphere, tables and CDS views can be published as data products by registering them in the data marketplace or catalog, where they appear as reusable, governed assets. These data products are then shared with consuming systems via the Delta Sharing protocol. In the following sections, we will explore Delta Sharing through a practical example that uses Databricks as the data platform and Power BI as the reporting tool.

The screenshot shows the Catalog section in Databricks, where shared database objects appear as data products. In the top-right corner under Catalog, you'll find governance, connection, and Delta Sharing options. 

{% image "src/assets/images/DB_Deltasharing.png", "Delta Sharing", "100vw" %}


#### Step 1 : Create Delta share and add recipient 
* Navigate to Catalog in your Databricks workspace sidebar.

* Click gear icon at top of Catalog pane > Delta Sharing (or Quick Access > Delta Sharing).

* Switch to "Recipient" tab > "New recipient".

* Create Recipient: Still in "Shared by me" > New recipient (name it, e.g., external_analytics_team; for PowerBI recipients, use  recipient type as open and select Token as authentication ).
​
{% image "src/assets/images/Create_DeltaShare.png", " Create Delta Sharing in Databricks", "100vw" %}

#### Step 2 : Activation link and credentials 

* After creating the new Delta Share, copy the activation link and open it in a browser to obtain the endpoint and bearer token, which can then be securely shared with the recipient.
​
{% image "src/assets/images/ActivationLink.png", " Create Delta Sharing in Databricks", "100vw" %}

#### Step 3 : Share the data with Power BI recipient : 

* Navigate to "Shared by me" tab > Create Share (name it, e.g., bi_share)

 {% image "src/assets/images/share_data.png", "Sharing", "100vw" %}

* Choose the data asset you want to expose via Delta Sharing.

 {% image "src/assets/images/dataasset.png", "dataasset", "100vw" %}

* Select the Power BI recipient that was created in Step 1.

 {% image "src/assets/images/recipient.png", "dataasset", "100vw" %}

​
#### Step 4 : Access the data from Token Credentials in PowerBI  : 

* In Power BI, add Delta Lake as a new data source and provide the Server URL and Bearer Token from the credentials file.

{% image "src/assets/images/GetData.png", "dataasset", "100vw" %}

* Once connected, the shared data assets become available in Power BI and can be used for further analysis and reporting.

{% image "src/assets/images/PowerBITables.png", "dataasset", "100vw" %}


## Conclusion

Delta Sharing turns the idea of data products into something teams can actually use day to day. Instead of copying data around or maintaining fragile ETL pipelines, it allows data to be shared exactly where it lives—securely, in real time, and across different tools. As shown with Databricks and Power BI, consumers can start analyzing data almost immediately using simple, token-based access. When combined with governed data products in SAP Datasphere, Delta Sharing makes data easier to trust, easier to reuse, and much easier to scale—helping teams focus less on moving data and more on creating insights.
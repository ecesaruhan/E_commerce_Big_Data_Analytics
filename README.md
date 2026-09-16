# Large-Scale E-commerce Behaviour Analysis

## Big Data Analytics Project

This project applies Big Data technologies to analyse large-scale e-commerce user behaviour. The project focuses on understanding customer interactions, purchasing behaviour and product performance using the Hadoop ecosystem and Apache Spark.

The project is developed as part of the MSc Data Analytics – Big Data Analytics module.

---

# 1. Project Overview

The purpose of this project is to demonstrate how Big Data concepts and distributed processing technologies can be applied to a real-world e-commerce business problem.

The project uses a large-scale e-commerce behavioural dataset containing customer interaction events from a multi-category online store. The data includes product views, cart activity and purchases.

The project will use Hadoop HDFS for distributed storage, YARN for resource management and Apache Spark for distributed processing and analytics.

The analytical results will be visualised and interpreted from a business perspective.

The overall project workflow is:

Dataset
↓
HDFS
↓
YARN
↓
Spark Distributed Processing
↓
Data Analysis
↓
Visualisation
↓
Business Insights
↓
Recommendations

---

# 2. Business Problem

## 2.1 Problem Definition

E-commerce businesses generate large volumes of customer interaction data through activities such as viewing products, adding products to shopping carts and completing purchases.

The business problem addressed in this project is:

**How can a large-scale e-commerce company analyse customer interaction data to understand the relationship between product views, cart activity and purchases, and use these insights to support business decision-making?**

The project focuses on understanding customer behaviour throughout the e-commerce interaction process, from product interaction to completed purchase.

The main research questions are:

1. How does customer activity vary between product views, cart activity and purchases?
2. Which product categories and products receive high levels of customer interaction and purchases?
3. What is the relationship between product interactions and completed purchases?
4. How does e-commerce activity change over time during October 2019?

The results will be used to identify meaningful behavioural patterns and develop evidence-based business recommendations.

---

## 2.2 Why Big Data?

The selected problem is suitable for a Big Data approach because the dataset contains 42,448,764 e-commerce interaction events and has a file size of approximately 5.67 GB.

Processing data at this scale can create challenges for traditional single-machine approaches in terms of storage, processing and scalability.

A distributed Big Data architecture can address these challenges by distributing data storage and processing across the Hadoop ecosystem.

In this project, Hadoop HDFS will be used for distributed storage, YARN will support resource management and Apache Spark will be used for distributed processing and analytics.

The suitability of the problem will be considered using the five key characteristics of Big Data:

- Volume
- Velocity
- Variety
- Veracity
- Value

---

# 3. Business Context

The project considers a large e-commerce company that collects behavioural data from customers interacting with an online store.

The analysis focuses on the customer interaction process, including product views, cart activity and completed purchases.

The main stakeholders that may benefit from the analysis include:

- marketing teams;
- sales and commercial teams;
- product managers;
- category managers; and
- business decision-makers.

The expected business value is to transform large-scale customer interaction data into useful information that can support decisions related to products, customer engagement, marketing and sales.

The final recommendations will be based on evidence obtained from the distributed analysis.

---

## 3.1 Expected Business Value

The project aims to provide business value by identifying patterns in customer interactions and purchasing behaviour.

The analysis may help an e-commerce business to:

- understand customer engagement with products;
- identify products and categories with high levels of activity;
- investigate the relationship between product views, cart activity and purchases;
- identify purchasing trends over time; and
- support evidence-based marketing and product decisions.

The recommendations will be based on the results obtained from the data analysis rather than assumptions.

---

## 3.2 Ethical and Data Governance Considerations

The dataset contains identifier fields such as `user_id` and `user_session`, which represent user activity within the e-commerce environment.

The project will not attempt to identify individual users.

User-level identifiers will only be used where necessary for analytical purposes, and findings will mainly be presented in aggregated form.

The project will also consider data quality issues, including missing values in `category_code`, `brand` and `user_session`.

The dataset will be used only for the purposes of this academic project, and unnecessary identifying information will not be disclosed in the report.

---

# 4. Five Vs of Big Data

## 4.1 Volume

The selected October 2019 dataset contains:

- 42,448,764 records;
- approximately 5.67 GB of data;
- 3,022,290 unique users;
- 166,794 unique products; and
- 624 unique categories.

The dataset is significantly larger than the minimum size required by the assignment for demonstrating HDFS storage using a 128 MB block size.

The actual HDFS block distribution will be verified during the data ingestion stage.

---

## 4.2 Velocity

The dataset contains timestamped e-commerce events recorded throughout October 2019.

The `event_time` variable allows customer activity to be analysed over time.

The dataset is historical rather than real-time, therefore velocity will be considered in terms of the frequency and temporal distribution of recorded e-commerce events rather than live data streaming.

---

## 4.3 Variety

The dataset contains nine variables representing different types of information.

These include:

- timestamp data;
- categorical data;
- numerical data; and
- identifier fields.

The main variables are:

- `event_time`
- `event_type`
- `product_id`
- `category_id`
- `category_code`
- `brand`
- `price`
- `user_id`
- `user_session`

This combination allows different aspects of customer, product and purchasing behaviour to be analysed.

---

## 4.4 Veracity

The dataset contains missing values in several variables.

The data quality analysis identified:

| Variable | Missing values |
|---|---:|
| `category_code` | 13,515,609 |
| `brand` | 6,113,008 |
| `user_session` | 2 |

These missing values will be considered during data preprocessing and analysis.

The presence of missing values means that data quality must be considered when interpreting results involving product categories, brands and user sessions.

---

## 4.5 Value

The dataset provides business value because it contains information about customer interactions and purchasing behaviour.

The event data provides an opportunity to analyse the customer interaction process:

**Product View → Cart Activity → Purchase**

The analysis will investigate how customer activity is distributed across these stages and how the results can support business decision-making.

---

# 5. Dataset

## 5.1 Dataset Source

The project uses the:

**eCommerce behavior data from a multi-category store**

Dataset source:

**Kaggle**

The project uses the October 2019 dataset:

`2019-Oct.csv`

The dataset contains large-scale e-commerce behavioural events collected from a multi-category online store.

The original dataset is not stored in the GitHub repository because of its large file size.

The dataset can be obtained from the original Kaggle source and placed locally in the project's `data/` directory.

---

## 5.2 Dataset Characteristics

The October 2019 dataset contains:

| Dataset characteristic | Value |
|---|---:|
| File | `2019-Oct.csv` |
| File size | Approximately 5.67 GB |
| Records | 42,448,764 |
| Unique users | 3,022,290 |
| Unique products | 166,794 |
| Unique categories | 624 |
| Time period | 1–31 October 2019 |
| Variables | 9 |

The dataset contains three main event types:

| Event type | Number of records |
|---|---:|
| View | 40,779,399 |
| Cart | 926,516 |
| Purchase | 742,849 |
| **Total** | **42,448,764** |

The event distribution provides a basis for investigating customer interaction and purchase behaviour.

---

## 5.3 Dataset Variables

| Variable | Description |
|---|---|
| `event_time` | Timestamp of the recorded event |
| `event_type` | Type of user interaction |
| `product_id` | Product identifier |
| `category_id` | Category identifier |
| `category_code` | Product category information |
| `brand` | Product brand |
| `price` | Product price |
| `user_id` | User identifier |
| `user_session` | User session identifier |

---

## 5.4 Dataset Time Period

The selected dataset covers the complete month of October 2019.

The first recorded event is:

`2019-10-01 00:00:00 UTC`

The final recorded event is:

`2019-10-31 23:59:59 UTC`

This makes the dataset suitable for analysing changes in customer activity across the selected month.

---

## 5.5 Dataset Size and HDFS Suitability

The selected dataset has a file size of approximately 5.67 GB.

The assignment requires the selected dataset to be large enough to generate at least 3–4 HDFS blocks using a 128 MB block size.

The selected dataset therefore provides sufficient volume for demonstrating distributed storage using HDFS.

During the implementation stage, the actual HDFS block distribution, replication factor and file status will be documented using Hadoop commands and screenshots.

---

# 6. Big Data Technologies

The project will use the following technologies.

## Hadoop HDFS

Hadoop Distributed File System (HDFS) will be used as the distributed storage system for the large-scale e-commerce dataset.

The dataset will be uploaded into HDFS and its block distribution and replication will be examined.

## YARN

YARN will be used for resource management and distributed job execution within the Hadoop environment.

## Apache Spark

Apache Spark will be used for distributed data processing and analytical tasks.

Spark will process the e-commerce dataset within the Hadoop ecosystem and will be used to investigate the research questions.

## Python

Python will be used where appropriate for data preprocessing, analysis, visualisation and potential machine learning tasks.

## GitHub

GitHub will be used to document the project and store source code, commands, Spark scripts, analytical outputs, screenshots and project documentation.

The large original CSV dataset will not be stored in the GitHub repository.

---

# 7. Hadoop Architecture

The Hadoop environment will be documented in accordance with the assignment requirements.

The architecture will include:

- NameNode
- DataNode
- Secondary NameNode
- ResourceManager
- NodeManager

The project will explain the roles of:

- HDFS;
- YARN;
- NameNode;
- DataNode;
- Secondary NameNode;
- FSImage;
- EditLog; and
- checkpointing.

The selected Hadoop environment and any configuration or setup issues will be documented during implementation.

---

# 8. Data Ingestion

The selected dataset will be ingested into HDFS using Hadoop command-line tools or an appropriate Hadoop interface.

The data ingestion stage will document:

1. the local dataset;
2. the HDFS directory structure;
3. the commands used to upload the dataset;
4. the resulting HDFS file;
5. HDFS block distribution;
6. replication information; and
7. evidence of successful data ingestion.

Screenshots and relevant Hadoop commands will be included in the project evidence.

---

# 9. Distributed Processing

The project will perform distributed processing using Apache Spark within the Hadoop ecosystem.

Spark will be used to investigate the defined research questions using distributed transformations and actions.

The main analytical questions are:

### Question 1

How does customer activity vary between product views, cart activity and purchases?

### Question 2

Which product categories and products receive high levels of customer interaction and purchases?

### Question 3

What is the relationship between product interactions and completed purchases?

### Question 4

How does e-commerce activity change over time during October 2019?

The project will document:

- Spark transformations;
- Spark actions;
- data processing workflow;
- relevant queries or code;
- input and output data;
- job execution; and
- how the processing is executed through YARN.

The results obtained from distributed processing will be interpreted from both technical and business perspectives.

---

# 10. Analytics and Machine Learning

Following distributed processing, the project will perform analytical tasks to identify meaningful patterns in the e-commerce data.

The analytical process will include:

1. Data preprocessing
2. Data quality assessment
3. Feature or metric selection
4. Distributed data processing
5. Analytical method selection
6. Evaluation of results
7. Interpretation of findings

The analysis will focus on customer interaction, product/category performance and purchase behaviour.

Where appropriate, a simple machine learning task may also be implemented using Spark MLlib or Python.

Any machine learning task will be selected based on the characteristics of the dataset and the business problem.

---

# 11. Visualisation

At least two visualisations will be produced to communicate the analytical findings.

Potential visualisations include:

- customer activity by event type;
- e-commerce activity over time;
- product performance;
- category performance;
- purchase distribution; and
- customer interaction and purchase behaviour.

The final visualisations will be selected based on the analytical results.

Each visualisation will be interpreted in relation to the business problem rather than presented only as a descriptive chart.

---

# 12. Business Insights and Recommendations

The analytical results will be translated into business insights.

The project will consider how the findings can support decisions relating to:

- marketing;
- product management;
- sales;
- customer engagement; and
- e-commerce strategy.

The recommendations will be based on evidence obtained from the distributed analysis.

The project will distinguish between analytical findings and business recommendations to ensure that recommendations are supported by the results.

---

# 13. Critical Reflection

The project will critically reflect on:

- technical limitations;
- dataset limitations;
- data quality;
- missing values;
- assumptions;
- ethical and data governance considerations;
- scalability;
- limitations of the selected analytical methods; and
- limitations of using a historical one-month dataset.

The suitability of Hadoop and Spark for larger-scale e-commerce data will also be considered.

---

# 14. Project Structure

```text
E_commerce_Big_Data_Analytics/
│
├── README.md
│
├── data/
│   ├── 2019-Oct.csv              # Local dataset - NOT uploaded to GitHub
│   └── README.md                 # Dataset source and download information
│
├── hadoop/
│   ├── README.md
│   └── commands/
│       └── hdfs_commands.txt
│
├── spark/
│   ├── README.md
│   ├── scripts/
│   │   └── ecommerce_analysis.py
│   └── outputs/
│
├── analysis/
│   ├── README.md
│   └── analytical_results.md
│
├── visualisations/
│   ├── README.md
│   └── charts/
│
├── screenshots/
│   ├── 01_dataset_file_size.png
│   ├── 02_dataset_preview.png
│   ├── 03_dataset_record_count.png
│   ├── 04_event_type_distribution.png
│   ├── 05_dataset_date_range.png
│   ├── 06_unique_users.png
│   ├── 07_unique_products_categories.png
│   └── 08_missing_values.png
│
├── report/
│   └── README.md
│
└── .gitignore
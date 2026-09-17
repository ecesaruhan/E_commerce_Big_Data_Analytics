# Large-Scale E-commerce Behaviour Analysis

## Big Data Analytics Project

This project applies Big Data technologies to analyse large-scale e-commerce user behaviour. The project focuses on customer interactions, purchasing behaviour, product performance and purchase patterns using the Hadoop ecosystem and Apache Spark.

The project was developed as part of the MSc Data Analytics – Big Data Analytics module.

---

# 1. Project Overview

The purpose of this project is to demonstrate how Big Data concepts and distributed processing technologies can be applied to a real-world e-commerce business problem.

The project uses a large-scale e-commerce behavioural dataset from a multi-category online store. The dataset contains customer interaction events including product views, cart activity and purchases.

The project uses:

- Hadoop HDFS for distributed storage
- YARN for resource management
- Hadoop MapReduce for distributed processing
- Apache Spark for distributed data processing and analytics
- Spark MLlib for a simple machine learning task
- Python for analysis and visualisation
- GitHub for project documentation and source code management

The overall workflow is:

Dataset
↓
HDFS
↓
Hadoop MapReduce
↓
Apache Spark
↓
Data Analysis
↓
Machine Learning
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

The project focuses on the customer interaction process from product interaction to completed purchase.

The main research questions are:

1. How does customer activity vary between product views, cart activity and purchases?
2. Which product categories and products receive high levels of customer interaction and purchases?
3. What is the relationship between cart activity and completed purchases?
4. How does e-commerce activity change over time during October 2019?
5. Can customer-level behavioural features be used to identify users associated with purchase activity?

---

# 3. Business Context

The project considers a large e-commerce company that collects behavioural data from customers interacting with an online store.

The analysis focuses on:

- Product views
- Cart activity
- Purchases
- Product categories
- Product performance
- Customer interaction patterns
- Activity over time

Potential stakeholders who may benefit from the analysis include:

- Marketing teams
- Sales and commercial teams
- Product managers
- Category managers
- Business decision-makers

The expected business value is to transform large-scale customer interaction data into useful information that can support decisions related to product performance, customer engagement, marketing and sales.

---

# 4. Why Big Data?

The selected dataset contains:

- 42,448,764 e-commerce interaction events
- Approximately 5.67 GB of raw CSV data
- 3,022,290 unique users
- 166,794 unique products
- 624 unique categories

Processing a dataset of this scale can create challenges for traditional single-machine approaches in terms of storage, processing time and scalability.

A distributed Big Data architecture allows storage and processing to be distributed across the Hadoop and Spark ecosystem.

In this project:

- HDFS provides distributed storage.
- YARN provides cluster resource management.
- Hadoop MapReduce demonstrates distributed batch processing.
- Apache Spark provides distributed analytics.
- Spark MLlib is used for a simple classification task.

---

# 5. Five Vs of Big Data

## 5.1 Volume

The October 2019 dataset contains 42,448,764 records and has a raw file size of approximately 5.67 GB.

The dataset also contains:

- 3,022,290 unique users
- 166,794 unique products
- 624 unique categories

The dataset is sufficiently large to demonstrate distributed storage and processing using HDFS and Spark.

---

## 5.2 Velocity

The dataset contains timestamped e-commerce events recorded throughout October 2019.

The `event_time` variable allows customer activity to be analysed over time.

The dataset is historical rather than real-time. Therefore, velocity is considered through the temporal distribution and frequency of recorded events rather than live streaming.

---

## 5.3 Variety

The dataset contains nine variables representing different types of information.

These include:

- Timestamp data
- Categorical data
- Numerical data
- Identifier fields

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

---

## 5.4 Veracity

The dataset contains missing values in several variables.

The identified missing values include:

| Variable | Missing Values |
|---|---:|
| `category_code` | 13,515,609 |
| `brand` | 6,113,008 |
| `user_session` | 2 |

These data quality issues are considered when interpreting results involving product categories, brands and user sessions.

---

## 5.5 Value

The dataset provides business value because it contains information about customer interactions and purchasing behaviour.

The analysis investigates the customer interaction process:

**Product View → Cart Activity → Purchase**

The results can help identify behavioural patterns, product performance and purchase-related activity that may support business decision-making.

---

# 6. Dataset

## 6.1 Dataset Source

The project uses the:

**eCommerce behavior data from a multi-category store**

Dataset source:

**Kaggle**

The selected file is:

`2019-Oct.csv`

The dataset contains large-scale e-commerce behavioural events collected from a multi-category online store.

Due to its large size, the original CSV file is not stored in the GitHub repository.

The dataset should be downloaded from the original Kaggle source and placed locally in the project's `data/` directory.

---

## 6.2 Dataset Characteristics

| Characteristic | Value |
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

| Event Type | Number of Records |
|---|---:|
| View | 40,779,399 |
| Cart | 926,516 |
| Purchase | 742,849 |
| **Total** | **42,448,764** |

---

## 6.3 Dataset Variables

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

## 6.4 Dataset Time Period

The selected dataset covers the complete month of October 2019.

First recorded event:

`2019-10-01 00:00:00 UTC`

Final recorded event:

`2019-10-31 23:59:59 UTC`

This makes the dataset suitable for analysing changes in e-commerce activity throughout the selected month.

---

# 7. Ethical and Data Governance Considerations

The dataset contains identifier fields such as:

- `user_id`
- `user_session`

These fields represent user activity within the e-commerce environment.

The project does not attempt to identify individual users.

User-level identifiers are used only where necessary for analytical purposes, and the main findings are presented in aggregated form.

The project also considers missing values and other data quality issues.

The dataset is used only for the purposes of this academic project, and unnecessary identifying information is not disclosed.

---

# 8. Technologies Used

## Hadoop

Hadoop is used as the main Big Data ecosystem for distributed storage and processing.

### HDFS

Hadoop Distributed File System (HDFS) is used to store the large e-commerce dataset.

The dataset was uploaded to:

`/ecommerce/input/2019-Oct.csv`

The HDFS environment was checked using Hadoop command-line tools, including HDFS listing and filesystem health commands.

---

## YARN

YARN is used as the resource management layer within the Hadoop environment.

The Hadoop environment includes:

- ResourceManager
- NodeManager

YARN provides the framework for managing distributed processing resources.

---

## Hadoop MapReduce

Hadoop Streaming was used to demonstrate a MapReduce processing task.

The implemented task counts the number of events for each event type:

- View
- Cart
- Purchase

The mapper extracts the event type and emits:

`event_type    1`

The reducer aggregates the values for each event type.

The processing was performed against the dataset stored in HDFS.

---

## Apache Spark

Apache Spark was used for distributed data processing and analytics.

The Spark notebook is:

`spark/Ecommerce_Spark_Analysis.ipynb`

Spark was connected to the Hadoop HDFS environment and loaded the dataset directly from:

`hdfs://namenode:9000/ecommerce/input/2019-Oct.csv`

The Spark analysis included:

- Schema inspection
- Record counting
- Event distribution
- Category analysis
- Product purchase analysis
- Average price analysis
- Daily activity analysis
- Missing value analysis
- Spark SQL
- Machine learning

---

## Spark MLlib

Spark MLlib was used to implement a simple Logistic Regression classification task.

The model uses customer-level behavioural features to investigate whether users were associated with purchase activity.

The features include:

- View count
- Cart count
- Average price

The target label indicates whether the user had at least one purchase in the analysed sample.

Because processing the full 42-million-record dataset at user level caused a resource limitation in the local Spark environment, a 1% sample of the dataset was used for the machine learning experiment.

The sample contained approximately 425,322 event records.

This limitation is discussed when interpreting the machine learning results.

---

## Python

Python was used within the Hadoop Streaming and Spark environment for processing, analysis and visualisation.

---

## GitHub

GitHub is used to store:

- Source code
- Hadoop configuration
- Hadoop scripts
- Spark notebook
- Analysis documentation
- Visualisations
- Screenshots
- Project documentation

The original 5.67 GB CSV dataset is not uploaded to GitHub.

---

# 9. Hadoop Architecture

The Hadoop environment was implemented using the Docker-based configuration provided for the module practical work.

The deployed environment includes:

- NameNode
- DataNode
- ResourceManager
- NodeManager
- HistoryServer

### NameNode

The NameNode manages HDFS metadata and the filesystem namespace.

### DataNode

The DataNode stores HDFS data blocks.

### ResourceManager

The ResourceManager manages cluster resources and coordinates YARN applications.

### NodeManager

The NodeManager manages resources and tasks on the worker node.

### HistoryServer

The HistoryServer provides information about completed Hadoop jobs.

### Secondary NameNode

The Secondary NameNode role and checkpointing mechanism are discussed conceptually in the project.

The provided Docker teaching configuration did not include a dedicated Secondary NameNode service. Therefore, the practical implementation followed the supplied Hadoop environment while the role of the Secondary NameNode, FSImage, EditLog and checkpointing is explained in the report.

---

# 10. HDFS and Data Ingestion

The large CSV dataset was uploaded into HDFS.

The main HDFS input path is:

`/ecommerce/input/2019-Oct.csv`

An output directory was also created:

`/ecommerce/output`

The HDFS environment was checked using commands such as:

```bash
hdfs dfs -ls -h /ecommerce/input
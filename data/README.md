# Dataset

## Dataset Source

The dataset used in this project is the **eCommerce behavior data from a multi-category store**, obtained from Kaggle.

The project uses the October 2019 dataset:

`2019-Oct.csv`

## Dataset Period

The dataset contains e-commerce customer behaviour events recorded during:

**1 October 2019 – 31 October 2019**

## Dataset Size

The `2019-Oct.csv` file is approximately **5.67 GB** in size and contains **42,448,764 records**.

The dataset contains **9 variables**:

- event_time
- event_type
- product_id
- category_id
- category_code
- brand
- price
- user_id
- user_session

## Dataset Characteristics

The dataset contains customer interaction events from an e-commerce environment. The main event types are:

- View
- Cart
- Purchase

The dataset contains **3,022,290 unique users**, **166,794 unique products**, and **624 unique categories**.

## Data Quality

Some variables contain missing values, particularly `category_code`, `brand`, and `user_session`.

These missing values will be considered during the data preprocessing and analysis stages.

## Storage and GitHub

The raw dataset is not uploaded to GitHub because of its large file size.

The CSV file is stored locally in the `data` folder and will later be ingested into **HDFS** for distributed processing.

The dataset source, structure, size and processing approach are documented in this repository.
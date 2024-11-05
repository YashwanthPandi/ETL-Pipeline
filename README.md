# End-To-End-Data-Engineering-Youtube-Analysis-Pipeline

## Project Overview

This project serves two main purposes:

1. **Gain Hands-on Experience with ETL Pipelines**: We'll build an ETL (Extract, Transform, Load) pipeline to learn the process of collecting, processing, and storing data for analysis. This will provide practical experience with the core stages of data preparation for analytics workflows.
2. **Develop a Secure and Scalable YouTube Video Analytics System**: By building this pipeline, we'll create a secure and efficient system capable of analyzing massive amounts of YouTube video data. The system will focus on video categories and trending metrics, providing valuable insights into YouTube video performance.

## Dataset

We utilize a [Kaggle dataset](https://www.kaggle.com/datasets/datasnaek/youtube-new) containing daily statistics on trending YouTube videos across various locations for many months. Each region has a dedicated CSV file with details on up to 200 daily trending videos (title, channel, publish time, tags, views, likes/dislikes, descriptions, comments). A linked JSON file provides category IDs for video categorization. This rich dataset, with both structured and semi-structured data, fuels our analysis of YouTube video trends.

## Technologies Used

This project leverages a variety of AWS services to build a secure, scalable, and efficient YouTube video analytics system:

- **Amazon S3**
- **AWS IAM**
- **Amazon QuickSight**
- **AWS Glue**
- **AWS Lambda**
- **AWS Athena**

## Architecture
<img src="architecture.jpeg">

### Implementation

**Step 1** - Ingest data into Amazon S3 buckets from Kaggle.  
Export data from Kaggle to Amazon S3 buckets in two formats: CSV and JSON. The files are stored as S3 objects inside buckets in your selected regions, accessible via unique S3 URIs (Uniform Resource Identifiers).

**Step 2** - Create a central repository of metadata for all data assets in your project.  
Utilize the AWS Glue Crawler, which iteratively scans each data source, inferring their schema, structure, and formats. This information is stored in the AWS Glue Catalog, composed of databases and tables that provide a logical structure for managing metadata, including essential details like column names, data types, and partition keys.

**Step 3** - Create an AWS Lambda function to process incoming data and store it in cleansed Amazon S3 buckets.  
AWS Lambda facilitates serverless compute functionality, allowing you to run Python code to process data according to business requirements. This step includes converting data formats from JSON to Parquet for improved efficiency and consistency across the data pipeline while updating the data catalog in AWS Glue with the latest schemas and column datatypes.

**Step 4** - Create ETL jobs to extract data from S3 buckets, apply join transformations, and load data for further analysis.  
Automate data processing and delivery by creating ETL jobs. For instance, join two dataframes on category_id and id columns to create a final cleaned dataset ready for analysis.

**Step 5** - Create a dashboard to visualize and answer business questions using AWS Athena.  
Use Amazon QuickSight as a business intelligence tool to deliver easy-to-understand insights, and integrate other BI tools with the final cleaned dataset as needed.


## Learning from Project

1. **ETL Pipeline Mastery**: Gained practical experience in building ETL pipelines for data extraction, transformation, and loading.

2. **AWS Integration**: Leveraged AWS services:
   - **S3** for storage.
   - **Glue** for data transformation and cataloging.
   - **Lambda** for serverless processing.
   - **Athena** for querying.
   - **QuickSight** for visualization.

3. **Data Lake Architecture**: Structured the data lake into landing, cleansed/enriched, and analytics/reporting areas.

4. **Security**: Implemented secure access using **AWS IAM**.

5. **Orchestration**: Used **AWS Step Functions** for efficient data processing workflows.

6. **Monitoring**: Employed **AWS CloudWatch** for system monitoring and alerts.

7. **Scalable Analytics**: Enabled quick insights using **AWS Athena** without data movement.

8. **Visualization Tools**: Utilized **QuickSight** and other tools for creating interactive dashboards and visualizations.



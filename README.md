# End-To-End-Data-Engineering-Youtube-Analysis-Pipeline

## Project Overview

This project serves two main purposes:

1. **Gain Hands-on Experience with ETL Pipelines**: We'll build an ETL (Extract, Transform, Load) pipeline to learn the process of collecting, processing, and storing data for analysis. This will provide practical experience with the core stages of data preparation for analytics workflows.
2. **Develop a Secure and Scalable YouTube Video Analytics System**: By building this pipeline, we'll create a secure and efficient system capable of analyzing massive amounts of YouTube video data. The system will focus on video categories and trending metrics, providing valuable insights into YouTube video performance.

## Dataset

We utilize a [Kaggle dataset](https://www.kaggle.com/datasets/datasnaek/youtube-new) containing daily statistics on trending YouTube videos across various locations for many months. Each region has a dedicated CSV file with details on up to 200 daily trending videos (title, channel, publish time, tags, views, likes/dislikes, descriptions, comments). A linked JSON file provides category IDs for video categorization. This rich dataset, with both structured and semi-structured data, fuels our analysis of YouTube video trends.

## Technologies Used

This project leverages a variety of AWS services to build a secure, scalable, and efficient YouTube video analytics system:

- **Amazon S3**: As our highly scalable object storage service, S3 provides reliable and cost-effective storage for our massive datasets.
- **AWS IAM**: We utilize IAM to implement robust access control, ensuring secure access to AWS resources and services involved in the pipeline.
- **Amazon QuickSight**: For data visualization, we'll be using Amazon QuickSight, a serverless, cloud-based BI service that allows us to create interactive dashboards and gain insights from our YouTube video data.
- **AWS Glue**: This serverless data integration service simplifies data preparation tasks. AWS Glue will be instrumental in discovering, transforming, and combining data from various sources for analysis.
- **AWS Lambda**: AWS Lambda, a serverless compute service, allows us to run code without managing servers. This enables us to perform specific data processing tasks within the pipeline without worrying about server infrastructure.
- **AWS Athena**: For interactive data exploration directly on S3 storage, we'll be using AWS Athena. Athena eliminates the need for data movement, allowing us to efficiently query and analyze our YouTube video data directly in its native S3 location.

## Architecture
<img src="architecture.jpeg">

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



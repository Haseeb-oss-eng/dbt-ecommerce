## Create a Snowflake and dbt Pipeline

### Snowflake Setup
* **Warehouse:** Create a warehouse based on the dataset size (e.g., `X-Small` or `Small`).
* **Database:** Create a database named `ecommerce_db`.
* **Schema:** Create a raw data schema named `snowflake_schema` (used to keep raw data separate from dbt transformations).
* **Stages:** Create internal stages with the required `file_format` for CSV uploads.
* **Data Ingestion:** Use SnowSQL to upload raw data files from your local machine to the Snowflake stages (`PUT` command).
* **Table Creation:** Create structured tables in `snowflake_schema` matching the raw file schemas.
* **Data Loading:** Run `COPY INTO` commands to load data from the stages into your specific tables.
* **Validation:** Query all tables to verify that the row counts and data match the raw files.

### dbt Setup & Configuration
* **Environment:** In VS Code, install the required packages (`python`, `dbt-core`, and `dbt-snowflake`).
* **Initialization:** Run the command: `dbt init`
* **Adapter Selection:** When prompted in the terminal, choose `snowflake`.
* **Credentials Setup:** Enter the connection details for your Snowflake instance:
  * `account`: **xyz-abc** (your Snowflake account identifier)
  * `user`: **abcd** (your Snowflake username)
  * `password`: **qazmlp123**
  * `role`: **ACCOUNTADMIN** (or a dedicated custom role like `DBT_ROLE`)
  * `warehouse`: **abcd** (the warehouse created for processing)
  * `database`: **ecommerce_db** (the database housing your raw data)
  * `schema`: **dbt_schema** (dbt will automatically create this schema in Snowflake to store transformed models)
* **Privileges:** Ensure the dbt user/role has `USAGE` privileges on the database and warehouse, and `SELECT` privileges on the raw `snowflake_schema` tables.
* **dbt_project.yml** has all metadata for this project name, version, path to each folders like models, seeds, 
* In Module create two folders **Staging** and **Mart**. Inside Mart create **Core**.
* In folder **Staging** create all sql files for each table and In staging process we have to clean the raw dataset from wrong datatype or trimming ect.,
* 
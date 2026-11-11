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
* **dbt_project.yml** has all metadata for this project name, version, path to each folders like models, seeds, test, macros, snapshot, analysis then target paths and clean target and last how the models has to be materialized (view or table).
* In models folder we need to create **src_models yml** file for setting up the connection to specific database and schema of snowflake account and name the list of tables in that database.
* So, When we run dbt models the dbt reads this src yml file and then connect to the specific mentioned database and schema then checks the models table contains in src yml then run the query against it
Also, we can use this file for run test by mentioning columns and conditions (this tests on raw data tables which is source from snowflake).
* Then, create the stg_yml file for running the generic test by mentioning the project path models and the specific stg_sql file and in that mention the columns with required condition to check.

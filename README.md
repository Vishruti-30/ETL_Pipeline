# 🔄 ETL with SSIS — Sales Data Integration Project

A complete **ETL (Extract, Transform, Load)** project using **SSIS (SQL Server Integration Services)** where mock sales data from a CSV file was cleaned, transformed, and loaded into a **SQL Server** database with derived columns like `Tax` and `Profit`.

---

## 📁 Dataset

A custom mock dataset saved in CSV format with the following fields:

- `SaleDate` – Date of transaction  
- `Region` – Sales region  
- `Salesperson` – Name of the salesperson  
- `Product` – Product sold  
- `UnitsSold` – Quantity sold  
- `UnitPrice` – Price per unit  

---

## 🎯 Project Objectives

- Implement a real-world ETL process in **SSIS**  
- Transform flat file data (CSV) with calculated columns  
- Load structured data into a **SQL Server** table  
- Handle data type conversions and error logging  
- Visualize successful data flow and troubleshoot mapping issues

---

## 🔧 ETL Steps

1. **Flat File Source**: Load the CSV file  
2. **Data Conversion**: Convert `UnitsSold` and `UnitPrice` to numeric types  
3. **Derived Columns**: Create new fields for `TotalSales`, `Tax`, and `Profit`  
4. **Conditional Split** *(Optional)*: Filter invalid rows if needed  
5. **OLE DB Destination**: Insert data into the `Sales` table in `SalesETLDB`  
6. **Execution & Debugging**: Run the package and verify loaded records

---

## 🛠 Tools Used

- SQL Server Management Studio (SSMS)  
- SSIS (via Visual Studio Data Tools)  
- SQL Server Express  
- Microsoft Excel (for CSV creation)

---

## 📁 Project Files

The project includes the following key files and assets stored in the `ssis-etl-sales-project/` folder:

- `mock_sales_data.csv`: The input sales dataset in CSV format, used as the flat file source  
- `ETL_SalesProject.sln`: The Visual Studio solution file that opens the SSIS project  
- `Package.dtsx`: The SSIS data flow package containing all ETL steps — flat file input, data conversion, derived columns, and SQL destination  
- `create_sales_table.sql`: SQL script to create the `Sales` table in the `SalesETLDB` database  
- `README.md`: This documentation file with all project information

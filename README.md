# Pharmacy Management System Database

## Introduction

Welcome to the Pharmacy Management System Database repository! This project contains the SQL scripts necessary to create and manage the database for a computerized pharmacy management system. The database is designed to handle tasks such as managing sales, inventory, and detailed information about medicines efficiently and effectively.

## Features

- **Medicine Information Storage**: Store detailed information about each medicine.
- **Sales Records**: Keep track of sales transactions.
- **Inventory Management**: Maintain records of incoming goods and current stock levels.
- **User-Friendly Queries**: Simplified SQL queries for easy data retrieval.

## Getting Started

### Prerequisites

- [MySQL](https://www.mysql.com/) or any other SQL-compatible database system.

### Setting Up the Database

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/pharmacy-management-system-db.git
   cd pharmacy-management-system-db
   ```

2. **Create the Database**:
   ```sql
   CREATE DATABASE pharmacy_management;
   ```

3. **Use the Database**:
   ```sql
   USE pharmacy_management;
   ```

4. **Run the SQL Scripts**:
   - Open your SQL client and execute the following script files in order:
     1. `tables.sql`: This script creates the necessary tables.
     2. `data.sql`: This script inserts initial data into the tables.

   ```sql
   SOURCE path/to/tables.sql;
   SOURCE path/to/data.sql;
   ```

### SQL Script Details

1. **tables.sql**:
   - Contains the SQL statements to create the tables needed for the pharmacy management system.
   - Tables include:
     - `medicines`: Stores information about medicines.
     - `sales`: Records each sale transaction.
     - `inventory`: Keeps track of stock levels and incoming goods.

2. **data.sql**:
   - Contains sample data to populate the tables.
   - Provides initial data to help you get started with testing the database.

## Usage

### Common SQL Queries

1. **Retrieve Medicine Information**:
   ```sql
   SELECT * FROM medicines WHERE name = 'medicine_name';
   ```

2. **Record a Sale**:
   ```sql
   INSERT INTO sales (medicine_id, quantity, sale_date) VALUES (1, 2, '2024-05-21');
   ```

3. **Update Inventory**:
   ```sql
   UPDATE inventory SET quantity = quantity + 10 WHERE medicine_id = 1;
   ```

4. **View Current Inventory**:
   ```sql
   SELECT * FROM inventory;
   ```

## Contributing

We welcome contributions from the community to enhance the functionality and features of the Pharmacy Management System Database. To contribute, please follow these steps:

1. **Fork the repository**.
2. **Create a new branch** for your feature or bug fix:
   ```bash
   git checkout -b feature-name
   ```
3. **Make your changes and commit them**:
   ```bash
   git commit -m "Description of the feature or fix"
   ```
4. **Push your changes to your forked repository**:
   ```bash
   git push origin feature-name
   ```
5. **Create a pull request** to the main repository.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contact

For any questions or suggestions, please open an issue in the repository or contact the project maintainers.

Thank you for using the Pharmacy Management System Database!

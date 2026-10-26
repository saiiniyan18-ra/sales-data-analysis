# Spreadsheet Cleaning and Analysis Notes

## 1. Data Cleaning

The original orders dataset was reviewed to identify missing values and inconsistent records. Orders with missing amounts were checked carefully, and the original data was preserved for reference.

## 2. Data Filtering

For the completed-orders analysis, only records with the status `completed` were included. This produced 63 completed orders.

## 3. Revenue Calculation

Revenue was calculated using the amount field from the completed orders. The total revenue was 346,200, and the total quantity sold was 106 units.

## 4. Data Validation

The cleaned data was compared with the SQL query results to check that the order count and revenue totals matched. The data was also checked for missing values and duplicate records.

## 5. Output File

The cleaned completed-orders dataset will be saved as `data/orders_clean.csv`. The enriched order-level dataset is saved as `data/orders_enriched.csv`.

## 6. Conclusion

Spreadsheet cleaning and validation help make the sales analysis more accurate and reliable. Comparing the spreadsheet results with SQL results provides an additional check on the calculations.

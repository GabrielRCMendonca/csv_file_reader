# csv_file_reader
CSV file reader - converter to XLS

#CSV Sum and Convert Project
This project simulates a production process where values from a database (represented as a CSV file) are summed and a new column with the accumulated values is created. The script processes data by summing values from the fourth column (representing prices) and appends a new column to the file with the cumulative sum.

Requirements
1. AWK (for Bash Script)
This project uses AWK to process the CSV file in the Bash script, sum the values in the fourth column, and add a cumulative total to the file.
AWK is a powerful text-processing tool that allows you to manipulate and analyze columns of data in a file.

3. Git Bash (Windows Environment)
Git Bash is required to run the Bash script on Windows systems. It provides a Bash emulation environment that supports the use of typical Unix/Linux commands (like awk and others) on Windows.
You can download Git Bash from here: https://git-scm.com

4. Python 3 (for conversion to XLS)

Python 3 is used to convert the processed CSV file to an Excel .xlsx file using the pandas library.
You need Python 3 installed, along with the pandas library for reading CSV files and converting them to Excel format.
You can install Python from [python.org.](https://www.python.org)

- Install the required Python packages using pip:

pip install pandas
Project Overview
This project is intended to mock the process of summing values from a database represented in CSV format, as well as adding a new field to store the cumulative sum. This is a common operation in data processing and can simulate operations like adding sales or transaction totals.

How It Works:

- Step 1: Processing with Bash and AWK

The script processes a CSV file with 4 columns, where the 4th column contains prices.
It uses AWK to sum the prices in the 4th column and appends the cumulative sum as a new column for each row.
The processed file is saved with the new cumulative sum column added.
Step 2: Conversion to Excel (Python)

Once the file is processed, the Python script takes the modified CSV and converts it to an Excel .xlsx file using the pandas library.

How to Run the Project:

- Step 1: Prepare Your Environment

- Install Git Bash on Windows.
- Install Python 3 and the pandas library.
- 
- Step 2: Prepare Your CSV File

- Place your CSV file (with at least 4 columns) in the project directory. Ensure the fourth column contains the prices you want to sum.
  
- Step 3: Run the Bash Script

- Open Git Bash and navigate to the project directory.
- Run the Bash script:

bash process_csv.sh input.csv
This will process the CSV file and generate an output file with the cumulative sum.

- Step 4: Convert to Excel

- Run the Python script to convert the modified CSV into an Excel .xlsx file:

python3 xls_converter.py output.csv
The resulting .xlsx file will be saved in the project directory.

- Sample Usage:

- Input CSV Example:


Item,Quantity,Unit Price,Price
Apple,10,1.00,10.00
Banana,5,0.80,4.00
Cherry,20,1.50,30.00

- Output CSV Example:


Item,Quantity,Unit Price,Price,Cumulative Total
Apple,10,1.00,10.00,10.00
Banana,5,0.80,4.00,14.00
Cherry,20,1.50,30.00,44.00


License
This project is open-source and available for use under the MIT License.

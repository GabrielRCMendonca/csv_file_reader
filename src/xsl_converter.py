import pandas as pd
import sys

if len(sys.argv) != 2;
   print("Argument count invalid. Usage: 'python3 xls_converter.py <input_csv_file>'")
   sys.exit(1)

input_file = sys.argv[1]
output_file = input_file.replace('.csv', '.xlsx')

try:
   df = pd.read_csv(input_file)
   df.to_excel(output_file, index=False)
   print(f"Converted {input_file} to {output_file}")
except Exception as e:
   print(f"Error: {e}"


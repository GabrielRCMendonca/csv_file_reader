#!bin/bash

if [[ $# -ne 1]]; then
   echo "Argument count invalid. Usage: $0 <input_csv_file>"
   exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="output_with_total.csv"

if [[ ! -f "$INPUT_FILE"]]; then
   echo "Error: File '$INPUT_FILE' not found"
   exit 1
fi

awk -F, '
BEGIN { OFS=","; print "Col1", "Col2", "Col3", "Price", "Total"
NR > 1 {
   sum += $4;
   print $1, $2, $3, $4, sum;
}
' "$INPUT_FILE" > "$OUTPUT_FILE"

echo "Processed file save to "$OUTPUT_FILE"

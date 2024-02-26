#!/bin/bash

# Add the opening bracket to the output file
echo "["

# Loop through all .json files in the directory
for file in *.json
do
  # Concatenate the contents of the current file to the output file
  cat "$file"
  
  # Add a comma before each file, except for the first one
  if [ "$file" != "*.json" ]
  then
    echo ","
  fi
done

# Add the closing bracket to the output file
echo "]"
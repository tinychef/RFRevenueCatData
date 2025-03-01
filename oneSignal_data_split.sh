#!/bin/bash

echo "Creating Python script for splitting OneSignal data..."

# Create a temporary Python script
cat > split_data.py << 'EOF'
import json
import math
import sys
import glob
import os

def split_data():
    try:
        # First, check existing files and their total records
        existing_records = 0
        for file in glob.glob('OneSignal_Data_part*.json'):
            try:
                with open(file, 'r') as f:
                    existing_records += len(json.load(f))
            except:
                pass
        print(f"Found existing split files with total {existing_records} records")

        # Read the new OneSignal data file
        with open('OneSignal_data.json', 'r') as f:
            data = json.load(f)

        total_records = len(data)
        print(f"New data has {total_records} records")

        if total_records < existing_records:
            print("WARNING: New data has fewer records than existing split files!")
            response = input("Continue anyway? (y/n): ")
            if response.lower() != 'y':
                return False

        # Remove any existing part files
        for file in glob.glob('OneSignal_Data_part*.json'):
            os.remove(file)
            print(f"Removed existing file: {file}")

        # Calculate size for each part (now using 4 parts)
        records_per_file = math.ceil(total_records / 4)
        print(f"Will create 4 files with approximately {records_per_file} records each")

        # Split and save
        for i in range(4):
            start_idx = i * records_per_file
            end_idx = min((i + 1) * records_per_file, total_records)
            part_data = data[start_idx:end_idx]
            
            output_file = f'OneSignal_Data_part{i+1}.json'
            with open(output_file, 'w') as f:
                json.dump(part_data, f, indent=2)
            print(f"Created {output_file} with {len(part_data)} records")

        print("Split complete!")
        return True

    except FileNotFoundError:
        print("Error: OneSignal_data.json not found!")
        return False
    except json.JSONDecodeError:
        print("Error: Invalid JSON in OneSignal_data.json!")
        return False
    except Exception as e:
        print(f"Error: {str(e)}")
        return False

if __name__ == "__main__":
    split_data()
EOF

echo "Running the split script..."
python3 split_data.py

# Clean up the temporary Python script
rm split_data.py

echo "Process complete!" 
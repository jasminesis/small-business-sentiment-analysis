import json
import os

# Define input and output file paths
input_file_path = "review_data/review-New_York.json"
output_dir = "review_data_split"
os.makedirs(output_dir, exist_ok=True)

# Define maximum lines per output file
max_lines_per_file = 335000
current_lines = 0
output_file_index = 1

# Open the large JSON file
with open(input_file_path, 'r') as input_file:
    output_file = None
    
    # Iterate over each line in the input file
    for line in input_file:
        # Load JSON from the line
        data = json.loads(line)
        
        # Write the JSON data to the current output file
        if output_file is None:
            output_file = open(os.path.join(output_dir, f"output_{output_file_index}.json"), 'w')
        
        output_file.write(json.dumps(data) + '\n')
        current_lines += 1
        
        # If the maximum lines per file is reached, close the current output file and open a new one
        if current_lines >= max_lines_per_file:
            output_file.close()
            output_file_index += 1
            current_lines = 0
            output_file = open(os.path.join(output_dir, f"output_{output_file_index}.json"), 'w')

# Close the last output file
if output_file:
    output_file.close()

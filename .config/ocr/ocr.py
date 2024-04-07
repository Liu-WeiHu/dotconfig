import os
import subprocess
import re

folder_path = '/home/liu/Media/Pictures/screenshots/'

file_list = os.listdir(folder_path)
file_list = sorted(file_list, key=lambda x: os.path.getmtime(os.path.join(folder_path, x)))
latest_file = file_list[-1]
file = os.path.join(folder_path, latest_file)

# result = os.system("/home/liu/.venv/bin/paddleocr --image_dir "+ file +" --lang=en | grep  ']], ('")
result = subprocess.run("/home/liu/.venv/bin/paddleocr --image_dir "+ file +" --lang=en | grep  ']], ('", shell=True, text=True, capture_output=True)

find_all = re.findall(r"\('(.*?)', ", result.stdout)
query = "".join(find_all)

print(query)
print("\n")
#!/bin/bash
# This script is used to execute a series of Linux commands.
# find cmd

#find all files with .log extension in /var/log directory
# find /var/log -name "*.log"
# #ignore case in using find
# find . -iname "*.txt"

#find by size
# find / -size +100M 2>/dev/null

# #find the empty files
# find . empty -type f

# Delete the old logs files
# find /var/log -type f -name "*.log" -mtime +10 2>dev/null|| ls -lrt 

# -------------------------------

# awk

# awk " {print $1}" /etc/passwd

# awk -F: '{print $4}' /etc/passwd

# awk -F: '{print $1,$3}' /etc/passwd

#NR --> line by line or Line number

# awk -F:  'NR==3 {print $6}' /etc/passwd

# awk -F: 'NR==2{print $1,$3}' /etc/passwd

# awk -F: 'END{print $1,$4}' /etc/passwd

# df -h | grep "/dev/" | awk '{print $1, $5}'

##sed##

#sed is used to find and replace text in a file
# sed 's/old/new/g' file.txt
# without -i print modified content to the terminal original file will not be modified
# with -i option original file will be modified
# sed 's/%/ /g' file.txt
# sed 's/\<vin\>/jalagam/g' file.txt

# sed 's/error/ERROR/g' file.txt

# sed '3d' file.txt

# sed '/^$/d' #Delete the empty lines in the file

# sed -i 's/5000/10000/g' file.txt

#find the top 5 largest files
# find /                  # Search from root directory
# -type f                 # Find only files
# -exec du -h {} +        # Get size of all found files
# 2>/dev/null             # Hide permission errors
# | sort -rh              # Sort largest to smallest
# | head -n 5             # Show top 5 largest files
# find / -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 5

#find the high CPU consuming processes

# ps -eo pid,comm,%cpu --sort=-%cpu | head -n 10

# #find the high memory consuming processes
# ps -eo pid,comm,%mem --sort=-%mem | head -n 10

# df -h | awk 'NR>1 {gsub("%","",$5); if ($5 > 10) print $0}'

#cut --> command is used to extarct specific columns(fileds) or characters from a file or input stream.

# cut -d ":" -f 1,4 /etc/passwd

# cut -d ':' -f6 /etc/passwd --> print the 6th field of the /etc/passwd file which is the home directory of the user.

# cut -d":" -f1,7 /etc/passwd

# cut -d "," -f1 employees.csv --> print the first column of the employees.csv file which is the employee name.

#cut -d "," -f2,3 employees.csv #--> print the second and third columns of the employees.csv file which are the employee age and department respectively.

# df -h | awk "NR==2" | cut -d " " -f1


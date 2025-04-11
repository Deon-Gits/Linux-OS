#!/bin/bash

echo "Checking running processes for user: $USER"
echo "---------------------------------------"

# Show all processes for current user
ps aux | grep "^$USER" | grep -v grep

echo "---------------------------------------"
echo "How would you like to sort your processes?"
echo "1) Memory Usage"
echo "2) CPU Usage"
read -p "Enter 1 or 2: " choice

if [ "$choice" == "1" ]; then
    echo "Sorting processes by Memory Usage..."
    ps aux --sort=-%mem | grep "^$USER" | grep -v grep | head -15
elif [ "$choice" == "2" ]; then
    echo "Sorting processes by CPU Usage..."
    ps aux --sort=-%cpu | grep "^$USER" | grep -v grep | head -15
else
    echo "Invalid choice! Exiting."
    exit 1
fi

echo "---------------------------------------"
echo "Process check completed!"

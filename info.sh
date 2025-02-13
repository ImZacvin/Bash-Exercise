#!/bin/bash

systemInfo=$(uname)
onFor=$(uptime -p)

# Display system information
echo "=============================="
echo "🖥️  System Information"
echo "=============================="
echo "Operating System: $systemInfo"
echo "Uptime : $onFor"   

# Display file system space usage
echo -e "\n=============================="
echo "💾 File System Space Usage"
echo "=============================="
df -h

# Display file system memory usage
echo -e "\n=============================="
echo "🧠 Memory Information"
echo "=============================="
echo "This is your information free space :"
free -h

# Display CPU usage (Top 5)

echo -e "\n=============================="
echo "CPU Usage(Top 5)"
echo "=============================="
top -b -n 1 | head -n 5

# Display Network Information

echo -e "\n=============================="
echo "Network Information"
echo "=============================="
ip -br a

echo -e "\n✅ Script execution completed!"
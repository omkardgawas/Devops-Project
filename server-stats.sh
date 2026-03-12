#!/bin/bash

echo "========================================"
echo "        SERVER PERFORMANCE STATS"
echo "========================================"
echo ""

# -------- CPU Usage --------
echo "----- Total CPU Usage -----"
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)
echo "CPU Usage: $CPU_USAGE %"
echo ""

# -------- Memory Usage --------
echo "----- Memory Usage -----"
MEM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
MEM_USED=$(free -m | awk '/Mem:/ {print $3}')
MEM_FREE=$(free -m | awk '/Mem:/ {print $4}')
MEM_PERCENT=$(awk "BEGIN {printf \"%.2f\", ($MEM_USED/$MEM_TOTAL)*100}")

echo "Total Memory : ${MEM_TOTAL} MB"
echo "Used Memory  : ${MEM_USED} MB"
echo "Free Memory  : ${MEM_FREE} MB"
echo "Usage        : ${MEM_PERCENT}%"
echo ""

# -------- Disk Usage --------
echo "----- Disk Usage -----"
df -h --total | grep total | awk '{print "Total Disk: "$2"\nUsed Disk : "$3"\nFree Disk : "$4"\nUsage     : "$5}'
echo ""

# -------- Top 5 CPU Processes --------
echo "----- Top 5 Processes by CPU Usage -----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

# -------- Top 5 Memory Processes --------
echo "----- Top 5 Processes by Memory Usage -----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo ""

echo "========================================"

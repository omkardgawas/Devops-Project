Server Performance Stats Script
Project URL

https://roadmap.sh/projects/server-stats

Description

This project contains a Bash script (server-stats.sh) that analyzes basic server performance statistics on a Linux system.

The script collects and displays the following information:

Total CPU usage

Total memory usage (Free vs Used including percentage)

Total disk usage (Free vs Used including percentage)

Top 5 processes by CPU usage

Top 5 processes by memory usage

This script can be executed on any Linux server to quickly inspect system performance.

Requirements

Linux system (Ubuntu, CentOS, Debian, Amazon Linux, etc.)

Bash shell

Common Linux utilities:

top

ps

df

free

awk

bc

These tools are usually pre-installed on most Linux systems.

Installation

Clone the repository:

git clone https://github.com/your-username/server-stats.git

Navigate to the project directory:

cd server-stats

Make the script executable:

chmod +x server-stats.sh
Usage

Run the script using:

./server-stats.sh
Example Output
SERVER PERFORMANCE STATS

Total CPU Usage: 18.5%

Memory Usage:
Total: 7972 MB
Used: 3102 MB
Free: 4870 MB
Usage: 38.91%

Disk Usage:
Total: 100G
Used: 45G
Free: 55G
Usage: 45%

Top 5 Processes by CPU Usage
Top 5 Processes by Memory Usage
Author

Omkar

License

This project is open-source and free to use.

#!/bin/bash

# This script writes, in a specified time interval, a system-state.log file with the following info:
# cpu, memory, active process number and disk usage, hostname and any other relevant info about system state.
# At each run, the script overwrites the system-state.log file with the new updates.
# The time interval for printing inside system-state.log file is taken from an env var, but has a default value of 5 sec.

# Run the line command export INTERVAL=x, where x is the time interval needed, other than the default 5 sec

# Run the ./monitoring.sh command inside the scripts folder to run the code

INTERVAL=${INTERVAL:-5} # sets the default value in case the user is passing no value at run time
LOG_FILE="system-state.log"

echo "The script will start monitoring system activity every $INTERVAL sec."
echo "Logs will be writen in the system-state.log file."

echo "Timestamp: $(date)" >> "$LOG_FILE"
echo "Hostname: $(hostname)" >> "$LOG_FILE"
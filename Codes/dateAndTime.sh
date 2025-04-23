#!/bin/bash

# Comprehensive Date and Time Script
# Demonstrates various date/time formats, calculations, and conversions

echo -e "\n=== Current Date and Time Information ===\n"

# 1. Basic Date Commands
echo "1. Basic Date Commands:"
echo "Current date and time (default format): $(date)"
echo "Current date in YYYY-MM-DD format: $(date +%F)"
echo "Current time in HH:MM:SS format: $(date +%T)"
echo "Current time in 12-hour format: $(date +%r)"
echo "Current Unix timestamp: $(date +%s)"

# 2. Custom Date Formats
echo -e "\n2. Custom Date Formats:"
echo "Day of the week (full name): $(date +%A)"
echo "Day of the week (short name): $(date +%a)"
echo "Month name (full): $(date +%B)"
echo "Month name (short): $(date +%b)"
echo "Day of month: $(date +%d)"
echo "Day of year: $(date +%j)"
echo "Week number of year: $(date +%U)"
echo "ISO week number: $(date +%V)"
echo "24-hour hour: $(date +%H)"
echo "12-hour hour: $(date +%I)"
echo "AM/PM: $(date +%p)"
echo "Minute: $(date +%M)"
echo "Second: $(date +%S)"
echo "Nanoseconds: $(date +%N)"
echo "Timezone: $(date +%Z)"
echo "Timezone offset: $(date +%z)"

# 3. Date Arithmetic
echo -e "\n3. Date Arithmetic:"
echo "Tomorrow's date: $(date -d "tomorrow" +%F)"
echo "Yesterday's date: $(date -d "yesterday" +%F)"
echo "Next Monday: $(date -d "next monday" +%F)"
echo "Last Friday: $(date -d "last friday" +%F)"
echo "Date 10 days from now: $(date -d "now + 10 days" +%F)"
echo "Date 3 weeks ago: $(date -d "now - 3 weeks" +%F)"
echo "Date 2 months 5 days from now: $(date -d "now + 2 months + 5 days" +%F)"
echo "End of current month: $(date -d "-$(date +%d) days +1 month" +%F)"

# 4. Time Calculations
echo -e "\n4. Time Calculations:"
echo "Current time plus 2 hours: $(date -d "+2 hours" +%T)"
echo "Current time minus 30 minutes: $(date -d "-30 minutes" +%T)"
echo "Current time plus 90 seconds: $(date -d "+90 seconds" +%T)"

# 5. Date Parsing and Conversion
echo -e "\n5. Date Parsing and Conversion:"
echo "Convert '2023-12-25' to different format: $(date -d "2023-12-25" "+%A, %B %d, %Y")"
echo "Convert 'March 10 2025' to Unix timestamp: $(date -d "March 10 2025" +%s)"
echo "Convert Unix timestamp 1672531200 to readable date: $(date -d @1672531200 +%F)"

# 6. Timezone Handling
echo -e "\n6. Timezone Handling:"
echo "Current time in UTC: $(date -u +%T)"
echo "Current time in New York (EDT/EST): $(TZ=America/New_York date +%T)"
echo "Current time in London (GMT/BST): $(TZ=Europe/London date +%T)"
echo "Current time in Tokyo (JST): $(TZ=Asia/Tokyo date +%T)"
echo "Time in New York when it's 12:00 UTC: $(TZ=America/New_York date -d '12:00 UTC' +%T)"

# 7. Epoch/Unix Time
echo -e "\n7. Epoch/Unix Time:"
current_epoch=$(date +%s)
echo "Current epoch time: $current_epoch"
echo "Convert epoch to date: $(date -d @$current_epoch)"
echo "Convert date to epoch: $(date -d "2024-01-01" +%s)"
echo "Calculate difference between two dates in seconds: $(( $(date -d "2024-12-31" +%s) - $(date -d "2024-01-01" +%s) ))"

# 8. File Timestamps
echo -e "\n8. File Timestamps:"
testfile="date_test_file.tmp"
touch "$testfile"
echo "Created test file: $testfile"
echo "Last access time: $(date -r $testfile +%F\ %T)"
echo "Last modification time: $(date -r $testfile +%c)"
sleep 2
touch "$testfile"
echo "Updated modification time: $(date -r $testfile +%c)"
rm "$testfile"

# 9. Date Validation
echo -e "\n9. Date Validation:"
validate_date() {
    if date -d "$1" &>/dev/null; then
        echo "Valid date: $1"
    else
        echo "Invalid date: $1"
    fi
}

validate_date "2023-02-28"
validate_date "2023-02-29"  # Invalid (not a leap year)
validate_date "2024-02-29"  # Valid (leap year)
validate_date "2023-13-01"  # Invalid month
validate_date "next tuesday"

# 10. Date Comparison
echo -e "\n10. Date Comparison:"
date1="2023-01-15"
date2="2023-05-20"
epoch1=$(date -d "$date1" +%s)
epoch2=$(date -d "$date2" +%s)

if [ $epoch1 -gt $epoch2 ]; then
    echo "$date1 is later than $date2"
elif [ $epoch1 -lt $epoch2 ]; then
    echo "$date1 is earlier than $date2"
else
    echo "$date1 is the same as $date2"
fi

# 11. Formatting Dates for Different Locales
echo -e "\n11. Locale-Specific Formatting:"
echo "US format (LC_TIME=en_US.UTF-8): $(LC_TIME=en_US.UTF-8 date +%c)"
echo "French format (LC_TIME=fr_FR.UTF-8): $(LC_TIME=fr_FR.UTF-8 date +%c)"
echo "German format (LC_TIME=de_DE.UTF-8): $(LC_TIME=de_DE.UTF-8 date +%c)"
echo "Japanese format (LC_TIME=ja_JP.UTF-8): $(LC_TIME=ja_JP.UTF-8 date +%c)"

# 12. Business Day Calculations
echo -e "\n12. Business Day Calculations:"
is_weekday() {
    day=$(date -d "$1" +%u)
    [ $day -lt 6 ] && echo "Weekday: $1" || echo "Weekend: $1"
}

is_weekday "2023-11-10"  # Friday
is_weekday "2023-11-11"  # Saturday

# 13. Time Difference Calculation
echo -e "\n13. Time Difference Calculation:"
start_time=$(date +%s.%N)
sleep 1.5  # Simulate some operation
end_time=$(date +%s.%N)
elapsed=$(echo "$end_time - $start_time" | bc)
echo "Operation took $elapsed seconds"

# 14. Countdown Timer
echo -e "\n14. Countdown Timer Example (5 seconds):"
countdown=5
while [ $countdown -gt 0 ]; do
    echo "$countdown..."
    sleep 1
    ((countdown--))
done
echo "Time's up!"

# 15. Calendar Display
echo -e "\n15. Calendar Display:"
cal=$(cal)
echo -e "Current month calendar:\n$cal"

echo -e "\n=== End of Date and Time Examples ==="

#!/bin/bash

# Check for a valid argument
if [[ ! $1 =~ ^[0-9]{10}$ ]]; then
    echo "Please provide a valid 10-digit number."
    exit 1
fi

# Split the number into parts
area=${1:0:3}
first_three=${1:3:3}
last_four=${1:6:4}

# Format the search query
query="\"$1\" OR \"$area-$first_three-$last_four\" OR \"$area.$first_three.$last_four\" OR \"($area)$first_three-$last_four\" OR \"($area) $first_three-$last_four\""

# Open Google Chrome with the search query
open -a "Google Chrome" "https://www.google.com/search?q=$query"

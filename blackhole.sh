#!/bin/bash

# Associative array of URLs
declare -A URLS=(
["Google"]="https://asn.ipinfo.app/api/text/ipblackhole/AS15169"
["ESET"]="https://asn.ipinfo.app/api/text/ipblackhole/AS50881"
["Another"]="https://asn.ipinfo.app/api/text/ipblackhole/AS198605"
)

# Loop through array
for NAME in "${!URLS[@]}"
do
    URL=${URLS[$NAME]}
    wget -O - ${URL} | while read LINE
    do
        # Execute each line as a command
        echo ${LINE}
        sudo ${LINE}
    done
    echo $"Blackhole for ${NAME} is completed."
done

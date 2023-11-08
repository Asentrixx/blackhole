#!/bin/bash

# Associative array of URLs
declare -A URLS=(
["Amazon"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS16509"
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

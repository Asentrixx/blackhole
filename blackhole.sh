#!/bin/bash

# Associative array of URLs
declare -A URLS=(
["Google"]="https://asn.ipinfo.app/api/text/ipblackhole/AS15169"
["ESET"]="https://asn.ipinfo.app/api/text/ipblackhole/AS50881"
["AVAST"]="https://asn.ipinfo.app/api/text/ipblackhole/AS198605"
["Sophos"]="https://asn.ipinfo.app/api/text/ipblackhole/AS58976"
["Sophos"]="https://asn.ipinfo.app/api/text/ipblackhole/AS399342"
["DigitalOcean"]="https://asn.ipinfo.app/api/text/ipblackhole/AS14061"
["BlixSolutions"]="https://asn.ipinfo.app/api/text/ipblackhole/AS50304"
["Hetzner"]="https://asn.ipinfo.app/api/text/ipblackhole/AS24940"
["KeliWeb SRL"]="https://asn.ipinfo.app/api/text/ipblackhole/AS202675"
["Amazon"]="https://asn.ipinfo.app/api/text/ipblackhole/AS16509"
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

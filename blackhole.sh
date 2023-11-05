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
["DataCamp Limited"]="https://asn.ipinfo.app/api/text/ipblackhole/AS212238"
["Fortinet"]="https://asn.ipinfo.app/api/text/ipblackhole/AS25885"
["Fortinet"]="https://asn.ipinfo.app/api/text/ipblackhole/AS40934"
["Fortinet"]="https://asn.ipinfo.app/api/text/ipblackhole/AS200589"
["Avira"]="https://asn.ipinfo.app/api/text/ipblackhole/AS203507"
["WebRoot"]="https://asn.ipinfo.app/api/text/ipblackhole/AS26250"
["WebRoot"]="https://asn.ipinfo.app/api/text/ipblackhole/AS33737"
["StrongTechnology"]="https://asn.ipinfo.app/api/text/ipblackhole/AS140952"
["M247"]="https://asn.ipinfo.app/api/text/ipblackhole/AS9009"
["StrongTechnology"]="https://asn.ipinfo.app/api/text/ipblackhole/AS207990"
["QUADRANET"]="https://asn.ipinfo.app/api/text/ipblackhole/AS8100"
["IPVolumeInc"]="https://asn.ipinfo.app/api/text/ipblackhole/AS202425"
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

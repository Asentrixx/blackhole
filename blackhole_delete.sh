#!/bin/bash

# Associative array of URLs
declare -A URLS=(
["Google"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS15169"
["ESET"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS50881"
["AVAST"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS198605"
["Sophos"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS58976"
["Sophos"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS399342"
["DigitalOcean"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS14061"
["BlixSolutions"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS50304"
["Hetzner"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS24940"
["KeliWeb SRL"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS202675"
["Amazon"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS16509"
["DataCamp Limited"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS212238"
["Fortinet"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS25885"
["Fortinet"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS40934"
["Fortinet"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS200589"
["Avira"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS203507"
["WebRoot"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS26250"
["WebRoot"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS33737"
["StrongTechnology"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS140952"
["M247"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS9009"
["StrongTechnology"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS207990"
["QUADRANET"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS8100"
["IPVolumeInc"]="https://asn.ipinfo.app/api/text/ipblackholerem/AS202425"
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
    echo $"Blackhole for ${NAME} removed."
done

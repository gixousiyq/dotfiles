#!/usr/bin/env bash

# Get weather
# Source: wttr.in

# weather location (space = "+")
# example: "London", "Salt+Lake+City"
weather_location="oran"

# weather units (default = "?m")
# ?u - USCS (farenheit, mph)
# ?m - metric (celcius, km/h)
# ?M - metric (celcius, m/s)
weather_unit="?m"

weather_status(){
    weather=$(curl -sf "wttr.in/$weather_location?format=%c%t&$weather_unit")
    echo "$weather"
}

print_weather(){
    if ping wttr.in -c 1 &> /dev/null; then
        echo "Getting weather information..."
        curl -s "wttr.in/$weather_location?$weather_unit" -o /tmp/weather
        [ -f /tmp/weather ] && clear && cat /tmp/weather
        read -rp "Press any key to exit..." exit
    else
        echo "Can't get weather information"
    fi
}

case "$1" in
    -o) weather_status ;;
    *) print_weather ;;
esac


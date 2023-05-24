#!/bin/bash

# IP ADDRESS
ip_address="192.168.1.10"

# MAIL
recipient="YourMail@example.com"

# SUBJECT
subject="Ping Failed "

# EMAIL FUNCTION
send_email() {
    local message="$1"
    echo "$message" | mail -s "$subject" "$recipient"
}

# LOOP
while true
do
    if ping -c 1 "$ip_address" >/dev/null 2>&1
    then
        echo "Ping réussi vers $ip_address"
    else
        echo "Échec du ping vers $ip_address"
        send_email "The ping to $ip_address failed."
    fi

    sleep 30  # Waiting Time
done

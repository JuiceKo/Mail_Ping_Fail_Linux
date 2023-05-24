#!/bin/bash

# IP ADDRESS
ip_address="10.14.182.11"

# MAIL
recipient="zabbix.bastien@gmail.com"

# SUBJECT
subject="Ping échoué"

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
        send_email "Le ping vers $ip_address a échoué."
    fi

    sleep 30  # Waiting Time
done

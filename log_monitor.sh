                                                       #!/bin/bash
# Simple Log Monitoring Script for SSH brute-force detection (systemd version)

THRESHOLD=5
ALERT_FILE="$HOME/ssh_alerts1.log"

echo "Monitoring failed SSH logins from journalctl ..."

# Extract failed login attempts from systemd journal
/usr/bin/journalctl -u ssh -n 2000 | grep "Failed password" | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr | while read count ip; do
    if [ $count -gt $THRESHOLD ]; then
        ALERT="⚠ ALERT: Suspicious activity from $ip - $count failed attempts"
        echo "$ALERT"
        echo "$(date) - $ALERT" >> "$ALERT_FILE"
    fi
done


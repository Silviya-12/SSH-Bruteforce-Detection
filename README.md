# SSH Brute Force Detection Script 🔐

## 📌 Introduction
This project is a simple Bash script to detect brute-force attacks on an SSH server by monitoring failed login attempts from **systemd journal logs**.

## 🎯 Objective
- Identify suspicious SSH login attempts
- Log alerts into a file (`ssh_alerts.log`)
- Automate detection using **Cron jobs**

## 🛠 Tools & Environment
- **Kali Linux (VirtualBox)**
- **Bash Scripting**
- **systemd journalctl**
- **Cron job scheduler**

## 🚀 Steps
1. Create and save the script (`log_monitor.sh`).
2. Make it executable:
   ```bash
   chmod +x log_monitor.sh
3.Run script manually:
```bash
log_monitor.sh

4.Setup cron job to run automatically every 5 minutes:
```bash
crontab -e
*/5 * * * * /home/kali/log_monitor.sh

⚡ How It Works

Script monitors journalctl logs for failed SSH logins.

Counts failed attempts from each IP.

If attempts exceed threshold → generates alert message.

Alerts are stored in ssh_alerts.log.

Cron runs the script automatically at scheduled times.

Results

Successfully detected brute force attempts.

Automatically generated logs in ssh_alerts.log.

Cron ensured continuous monitoring without manual effort.

📂 Project Files

log_monitor.sh → Main script to detect brute force attempts.

ssh_bruteforce_detection.pdf → Project Report with detailed steps.

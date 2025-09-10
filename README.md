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

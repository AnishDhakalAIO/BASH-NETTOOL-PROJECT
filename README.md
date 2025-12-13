# 🚀 Bash NetTool

Bash NetTool is a lightweight 🐚 **
network toolkit, written entirely in Bash.
It provides essential networking functionalities like
IP information,
subnet calculations,
DNS lookup,
network monitoring,and a simple TCP server. This tool is designed for Linux systems and is easy to install and use.

---

## ✨ Features

- 🌐 IP Information: Show detailed network interface info including IPv4, default gateway, and routing table
- 📊 Subnet Calculator: Calculate network address, broadcast address, usable hosts, subnet mask, and block size
- 🕵️‍♂️ DNS Lookup: Query DNS records (A, NS, MX) for a domain
- 📡 Network Monitor: Continuously ping a host and log results
- 🖥️ Mini TCP Server: Run a simple TCP server on port 8080
- 🛠️ Service Integration: Run as a systemd service for continuous monitoring
- ⏰ Cron Jobs: Automate scripts at defined intervals

📂 Project File System

bash-nettool/
├── README.md                 # Project description
├── install.sh                # Installation script
├── main.sh                   # Main menu script
├── modules/                  # Bash modules
│   ├── ip-info.sh            # IP information
│   ├── subnet-calc.sh        # Subnet calculator
│   ├── dns-lookup.sh         # DNS lookup
│   └── net-monitor.sh        # Network monitor
├── server/                   # TCP server
│   ├── server.sh             # TCP server (port 8080)
│   └── server-log.sh         # Optional logging
├── system/                   # System integration
│   ├── bash-nettool.service  # systemd service
│   └── cron-jobs.txt         # Cron examples
└── .git/                     # Git metadata



* Make teh insatll script executable and run it :
  - chmod +x install.sh
  - bash install.sh

    Optional: Set up the systemd service

sudo mv system/bash-nettool.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start bash-nettool.service
sudo systemctl enable bash-nettool.service


Optional: Set up cron job for automated network monitoring

sudo mkdir -p /var/log/bash-nettool
sudo crontab -e
# Add the line:
*/5 * * * * /opt/bash-nettool/modules/net-monitor.sh google.com >> /var/log/bash-nettool/ping.log

🎮 Usage

Run the main script:

/opt/bash-nettool/main.sh


You will see a menu:

===========================
      BASH NET TOOLKIT
===========================
1) IP Info
2) Subnet Calculator
3) DNS Lookup
4) Network Monitor
5) Exit
Choose an option:


Select the number corresponding to the module you want to run.

🎨 Colors in Terminal

The scripts use ANSI escape codes for colored output:

🔴 RED

🟢 GREEN

🔵 BLUE

🟡 YELLOW

🟦 LIGHTCYAN

⚪ RESET to clear colors

Example:

echo -e "${RED}Error!${RESET}"

📝 Notes

Uses Bash built-in tools like ip, nc, and dig. Make sure they are installed.

Tested on Ubuntu EC2 instances.

Logs for monitoring are stored in /var/log/bash-nettool/ping.log.

Designed to be run as a non-root user, but some operations may require sudo.

💻 Example Output

IP Info Module:

===== IP INFORMATION =====
ens5: 172.31.40.64/20
DEFAULT GATEWAY: 172.31.32.1
ROUTING TABLE:
...


DNS Lookup:

Enter domain: example.com
A Record: 93.184.216.34
NS Record: ns1.example.com
MX Record: 10 mail.example.com


Network Monitor:

Pinging google.com...
Reply from 142.250.182.206 time=23ms
Reply from 142.250.182.206 time=21ms

🔗 GitHub Repository

Repository: BASH-NETTOOL-PROJECT

SSH key can be reused for multiple projects on the same GitHub account.

👨‍💻 Author

Anish Dhakal – anishactitout@gmail.com




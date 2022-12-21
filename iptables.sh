#!/bin/bash

# Flush all existing rules
iptables -F

# Allow all incoming traffic on the loopback interface
iptables -A INPUT -i lo -j ACCEPT

# Allow incoming traffic from a specific IP range
iptables -A INPUT -s 10.0.0.0/8 -j ACCEPT

# Allow incoming traffic from a specific IP address
iptables -A INPUT -s 10.0.0.1 -j ACCEPT

# Allow incoming traffic on established connections
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Allow incoming traffic on certain ports
iptables -A INPUT -p tcp --dport 22 -j ACCEPT # SSH
iptables -A INPUT -p tcp --dport 80 -j ACCEPT # HTTP
iptables -A INPUT -p tcp --dport 443 -j ACCEPT # HTTPS

# Block all other incoming traffic
iptables -A INPUT -j DROP

# Save the rules
service iptables save

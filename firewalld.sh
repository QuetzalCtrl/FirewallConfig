#!/bin/bash

# Flush all existing rules
firewall-cmd --flush

# Allow all incoming traffic on the loopback interface
firewall-cmd --permanent --add-interface=lo

# Allow incoming traffic from a specific IP range
firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="10.0.0.0/8" accept'

# Allow incoming traffic from a specific IP address
firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="10.0.0.1" accept'

# Allow incoming traffic on established connections
firewall-cmd --permanent --add-service=icmp-echo-reply

# Allow incoming traffic on certain ports
firewall-cmd --permanent --add-service=ssh
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https

# Block all other incoming traffic
firewall-cmd --permanent --drop-invalid

# Reload the firewall to apply the new rules
firewall-cmd --reload

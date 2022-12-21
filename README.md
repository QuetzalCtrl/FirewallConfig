# FirewallConfig
## A small introduction to Firewall rules and configuration possibillities on an unix system.

Here you'll find 2 different examples of firewall rules configuration, using respectively iptables and firewalld. Both of them are widely used firewall systems that are available on many Unix-like systems, including Linux and some versions of BSD. 

Those 2 systems are powerful tools that can be used to secure a system by controlling incoming and outgoing traffic. However, they have some differences in terms of their capabilities and how they are configured : 

- Iptables is a low-level firewall that operates at the network layer and provides more granular control over incoming packets. It is typically used on servers and other systems that require fine-tuned control over the firewall.

- Firewalld is a higher-level firewall that is more user-friendly and easier to configure. It is often used on desktop systems and other systems that do not require as much granular control over the firewall.

This repo contains 2 .sh files, containing the same set of rules, but one using iptables, and the other firewalld. Note that this is just a simple example of what it is possible to do with these tools. It is also worth noting that it is possible for the iptables and firewalld rules to conflict with each other. This can happen if both iptables and firewalld are installed and configured on the same system, and both are being used to manage the firewall. In this situation, the rules from both iptables and firewalld will be applied to incoming packets, and the order in which the rules are applied can affect the final outcome (in general, the iptables rules are applied before the firewalld rules).

You can use the `iptables -L` command to view the current iptables rules, and the `firewall-cmd --list-all` command to view the current firewalld rules. This can help you identify any conflicts between the two systems.

To avoid conflicts between iptables and firewalld, it is generally recommended to choose one of the two systems and stick with it. If you do need to use both systems, you should carefully plan your rules to ensure that they do not conflict with each other.

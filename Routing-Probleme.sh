routing: nix ping mehr...
root@CLWaveLinux:~# ip route add 10.10.1.3 via 192.168.178.1
root@CLWaveLinux:~# route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         192.168.178.1   0.0.0.0         UG    0      0        0 eth0
10.10.1.0       192.168.178.1   255.255.255.255 UGH   0      0        0 eth0
10.10.1.0       0.0.0.0         255.255.255.0   U     0      0        0 eth1
10.10.1.2       192.168.178.1   255.255.255.255 UGH   0      0        0 eth0
10.10.1.3       192.168.178.1   255.255.255.255 UGH   0      0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     0      0        0 usb0
192.168.178.0   0.0.0.0         255.255.255.0   U     0      0        0 eth0
root@CLWaveLinux:~# ping 10.10.1.3

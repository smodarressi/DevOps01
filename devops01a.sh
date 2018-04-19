#!/bin/bash
# number  of volumes, size of each volume, free space on each volume
echo "Number of Volumes, Size of Each Volume, Free Space on Each Volume"
df -h
echo ""
#number cpu/cores, information about the cpu/cores
echo "CPU/Core Numbers, CPU/Core Info"
cat /proc/cpuinfo
echo ""
#amount of ram
echo "RAM Info"
cat /proc/meminfo
#computer mac address and ip address
echo ""
echo "IP Address and MAC Info"
echo ""
ip address
#print to file named something

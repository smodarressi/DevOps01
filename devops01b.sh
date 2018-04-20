#!/bin/bash
# number  of volumes, size of each volume, free space on each volume
#add command line statement for -volume
if [[ "$*" == "" ]]
then
  echo "Please type one of the following parameters:"
  echo "-volume : Prints Number of Volumes, Size of Each Volume, Free Space on Each Volume"
  echo "-cpu : Prints CPU/Core Numbers, CPU/Core Info"
  echo "-ram : Prints RAM Info"
  echo "-network : Prints IP Address and MAC Info"
  echo "-all : Prints all command line arguments"
  exit 1
fi
if [[ "$*" =~ "-volume" || "$*" =~ "-all" ]]
then
  echo "Number of Volumes, Size of Each Volume, Free Space on Each Volume"
  df -h
fi
echo ""
#number cpu/cores, information about the cpu/cores
if [[ "$*" =~ "-cpu" || "$*" =~ "-all" ]]
then
  echo "CPU/Core Numbers, CPU/Core Info"
  cat /proc/cpuinfo
fi
echo ""
#amount of ram
if [[ "$*" =~ "-ram" || "$*" =~ "-all" ]]
then
  echo "RAM Info"
  cat /proc/meminfo
fi
echo ""
#computer mac address and ip address
if [[ "$*" =~ "-network" || "$*" =~ "-all" ]]
then
  echo "IP Address and MAC Info"
  echo ""
  ip address
fi
#print to file named something

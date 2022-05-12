#!/bin/bash

#Prints the amount of free memory on the system and saves it to ~/backups/freem$

free memory > ~/backups/freemem/free_mem.txt

#prints disk usage and saves it to ~/backups/diskuse/disk_usage.txt

df -T > ~/backups/diskuse/disk_usage.txt

#list all open files and saves it to ~/backups/openlist/open_list.txt

lsof > ~/backups/openlist/open_list.txt

#list all open files and saves it to ~/backups/freedisk/free_disk.txt

df > ~/backups/freedisk/free_disk.txt


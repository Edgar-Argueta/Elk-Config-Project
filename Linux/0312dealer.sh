#!/bin/bash
cat 0312_Dealer_schedule | grep "05:00:00 AM\|08:00:00 AM\|02:00:00 PM\|08:00:00 PM\|11:00:00 PM" | awk -F" " '{print$5,$6,$1,$2}'

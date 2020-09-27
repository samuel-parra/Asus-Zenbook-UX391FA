#!/bin/bash

echo "fix Xiaomi bluetooth mouse"
MOUSEHANDLE=`hcitool con | grep "E4:C1:38:A0:99:CC" | awk '{print $5}'`
sudo hcitool lecup --handle $MOUSEHANDLE --min 6 --max 7 --latency 0

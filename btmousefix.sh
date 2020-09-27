#!/bin/bash

echo "fix bluetooth mouse"

echo 0 > /sys/kernel/debug/bluetooth/hci0/conn_latency
echo 6 > /sys/kernel/debug/bluetooth/hci0/conn_min_interval
echo 7 > /sys/kernel/debug/bluetooth/hci0/conn_max_interval

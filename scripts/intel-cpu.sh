#!/bin/bash
# for asus add acpi_osi=Linux on grub

INTEL_PSTATE=/sys/devices/system/cpu/intel_pstate
CPU_MIN_PERF=$INTEL_PSTATE/min_perf_pct
CPU_MAX_PERF=$INTEL_PSTATE/max_perf_pct
CPU_TURBO=$INTEL_PSTATE/no_turbo
GPU=/sys/class/drm/card0
GPU_MIN_FREQ=$GPU/gt_min_freq_mhz
GPU_MAX_FREQ=$GPU/gt_max_freq_mhz
GPU_CUR_FREQ=$GPU/gt_cur_freq_mhz

CPU_MAX_BATT=50
ENER_PERF_BATT="power"
GPU_MAX_BATT=800
CPU_MAX_ACC=100
ENER_PERF_ACC="balance_performance"
GPU_MAX_ACC=1150
NO_TURBO=1

case $1 in
	"-battery")
		echo $CPU_MAX_BATT | sudo tee $CPU_MAX_PERF
		for cpu in /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference; do
			echo $ENER_PERF_BATT | sudo tee $cpu
		done
		echo $GPU_MAX_BATT | sudo tee $GPU_MAX_FREQ		
		echo $NO_TURBO | sudo tee $CPU_TURBO
        ;;

	"-ac")
		echo $CPU_MAX_ACC | sudo tee $CPU_MAX_PERF
		for cpu in /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference; do
			echo $ENER_PERF_ACC | sudo tee $cpu
		done
		echo $GPU_MAX_ACC | sudo tee $GPU_MAX_FREQ        		
		echo $NO_TURBO | sudo tee $CPU_TURBO
		;;

	"-show")
		echo "min cpu : "$(cat $CPU_MIN_PERF)
		echo "max cpu : "$(cat $CPU_MAX_PERF)
		echo "turbo disabled: "$(cat $CPU_TURBO)
		echo "performance energy : "$(cat /sys/devices/system/cpu/cpu0/cpufreq/energy_performance_preference)
		echo "gpu min freq : "$(cat $GPU_MIN_FREQ)
		echo "gpu max freq : "$(cat $GPU_MAX_FREQ)
		echo "gpu curr freq : "$(cat $GPU_CUR_FREQ)			
		;;
    *)
        echo "Usage:"
        echo "1: intel-cpu.sh [ -battery | -show"
        echo "                  -ac ]"
        exit 3
        ;;        	
 esac	

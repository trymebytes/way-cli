#!/usr/bin/env python3
import platform
import shutil
import argparse
import sys

def get_machine_info():
    info = {}

    # OS info
    info["OS"] = platform.platform()
    info["OS Name"] = platform.system()
    info["OS Version"] = platform.release()

    # CPU
    info["CPU"] = platform.processor()
    info["Architecture"] = platform.machine()

    # Disk
    total, used, free = shutil.disk_usage("/")
    info["Disk Total"] = f"{round(total / (1024**3), 2)} GB"
    info["Disk Used"] = f"{round(used / (1024**3), 2)} GB"
    info["Disk Free"] = f"{round(free / (1024**3), 2)} GB"

    return info

def print_info(info):
    """Print machine info in table format"""
    print("\n=== Machine Info ===")
    max_key_length = max(len(key) for key in info.keys())
    for key, value in info.items():
        print(f"{key:<{max_key_length}} : {value}")

def main():
    try:
        machine_info = get_machine_info()
        print_info(machine_info)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()

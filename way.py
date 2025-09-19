import platform
import shutil

def get_machine_info():
    info = {}

    # OS info
    info["OS"] = platform.platform()

    # CPU
    info["CPU"] = platform.processor()

    # Disk
    total, used, free = shutil.disk_usage("/")
    info["Disk"] = f"{round(total / (1024**3), 2)} GB total"

    return info

def main():
    machine_info = get_machine_info()
    print("\n=== Machine Info ===")
    for key, value in machine_info.items():
        print(f"{key}: {value}")

if __name__ == "__main__":
    main()

# WAY CLI

A simple CLI tool to get machine information including OS details, CPU, and disk usage.

## Features

- 🖥️ Operating System information
- 🔧 CPU and architecture details  
- 💾 Disk usage statistics
- 📊 Clean table format output
- 🚀 Zero external dependencies (uses only Python standard library)

## Installation

### Option 1: Direct Download (Recommended)

1. Download the `way` script
2. Make it executable and install globally:

```bash
# Clone or download the repository
git clone https://github.com/trymebytes/way-cli.git
cd way-cli

# Run the installer script (installs to ~/bin)
chmod +x install.sh
./install.sh
```

### Option 2: Run directly (No installation)

```bash
# Clone the repository
git clone https://github.com/trymebytes/way-cli.git
cd way-cli

# Run directly
python3 way.py
```



## Usage

```bash
# Basic usage
way

# Get help
way --help

# Check version
way --version
```

## Output Example

```
=== Machine Info ===
OS           : macOS-14.0-arm64-arm-64bit
OS Name      : Darwin
OS Version   : 23.0.0
CPU          : arm
Architecture : arm64
Disk Total   : 494.38 GB
Disk Used    : 123.45 GB
Disk Free    : 370.93 GB
```

## Requirements

- Python 3.7 or higher
- No external dependencies (uses only standard library)

## Uninstall

```bash
rm ~/bin/way
```

## Development

```bash
# Clone and set up development environment
git clone https://github.com/trymebytes/way-cli.git
cd way-cli

# Run from source
python3 way.py

# Test with help
python3 way.py --help
```

## License

MIT License

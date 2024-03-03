# CodeAlpha_Basic_Network_Sniffer

This script is designed to sniff network packets on a specified interface and display information about the packets in a formatted table. It can also write the captured packets to a PCAP file for further analysis.
CodeAlpha Internship
## Installation

1.  Clone the repository:
    
    ```
    git clone https://github.com/ahmedelgendy3/CodeAlpha_Basic_Network_Sniffer
    ```
    
2.  Navigate to the project directory:
    
    ```
    cd CodeAlpha_Basic_Network_Sniffer
    ```
    
3.  Make the `setup.sh` script executable:
    
    ```
    chmod +x setup.sh
    ```
    
4.  Run the `setup.sh` script with sudo:
    
    ```
    sudo ./setup.sh
    ```
    
    This script installs the required dependencies (`prettytable` and `scapy`) using `pip`, makes the `sniffer` script executable, and copies it to a directory in the user's PATH (`/usr/local/bin`).
    

## Usage

```bash
sudo sniffer -i <interface> -c <count> -f <filters> -w <output_file>
```

### Options:

- `-i, --interface`: Specifies the interface to sniff on. Default is "eth0".
- `-c, --count`: Number of packets to capture. Default is unlimited.
- `-f, --filters`: Protocol and port filters separated by comma (e.g., "icmp,tcp"). Supported filters include "icmp", "tcp", "udp", "arp", and port numbers (e.g., "tcp port 80").
- `-w, --write`: Output file to write captured packets in PCAP format.

## Features

- **Packet Types**: The script identifies various packet types including ARP, TCP, UDP, and ICMP.
- **Timestamp**: Displays the timestamp when each packet was captured.
- **Source and Destination**: Shows the source and destination IP addresses (and ports for TCP and UDP).
- **Protocol**: Displays the protocol used (e.g., ICMP, TCP, UDP).
- **Details**: Provides additional details such as protocol numbers for non-TCP/UDP packets and ICMP type and code.

### Examples

1.  Capture packets on the `eth0` interface and display basic information:
    
    ```
    sudo sniffer
    ```
    
2.  Capture 100 packets on the `eth0` interface and save the output to a file named `output.pcap`:
    
    ```
    sudo sniffer -i eth0 -c 100 -w output.pcap
    ```
    
3.  Capture only ICMP packets:
    
    ```
    sudo sniffer -f icmp
    ```
    
4.  Capture TCP packets on port 80:
    
    ```
    sudo sniffer -f "tcp port 80"
    ```
    

## Dependencies

- Python 3
- Scapy
- PrettyTable

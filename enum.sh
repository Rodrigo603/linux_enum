#!/bin/bash
OUTPUT="output.txt"
echo "Linux Enumeration Script" > "$OUTPUT"
date >> "$OUTPUT"

KERNEL_NAME=$(uname -s)
HOSTNAME=$(uname -n)
KERNEL_RELEASE=$(uname -r)
KERNEL_VERSION=$(uname -v)
ARCH=$(uname -m)
OS=$(uname -o)
WIDTH=18

echo -e "\n====================" >> "$OUTPUT"
echo -e " Kernel Information" >> "$OUTPUT"
echo -e "====================\n\n" >> "$OUTPUT"


printf "%-${WIDTH}s : %s\n" "Kernel name" "$KERNEL_NAME" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n"  "Hostname"  "$HOSTNAME" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n"  "Kernel release" "$KERNEL_RELEASE" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n" "Kernel version"  "$KERNEL_VERSION" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n"  "Architecture"   "$ARCH" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n"  "OS"  "$OS" >> "$OUTPUT"





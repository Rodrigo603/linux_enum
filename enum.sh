#!/bin/bash
OUTPUT="output.txt"
echo "Linux Enumeration Script" > "$OUTPUT"
date >> "$OUTPUT"

source /etc/os-release


DISTRO_NAME="$NAME"
DISTRO_VERSION="$VERSION"
DISTRO_ID="$ID"
DISTRO_ID_LIKE="$ID_LIKE"


KERNEL_NAME=$(uname -s)
HOSTNAME=$(uname -n)
KERNEL_RELEASE=$(uname -r)
KERNEL_VERSION=$(uname -v)
ARCH=$(uname -m)
WIDTH=18


echo -e "\n====================" >> "$OUTPUT"
echo -e "   OS information" >> "$OUTPUT"
echo -e "====================\n\n" >> "$OUTPUT"

printf "%-${WIDTH}s : %s\n" "Distro name" "$DISTRO_NAME" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n" "Distro version" "$DISTRO_VERSION" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n" "Distro ID" "$DISTRO_ID" >> "$OUTPUT"

if [[ -n "$DISTRO_ID_LIKE" ]]; then 
	printf "%-${WIDTH}s : %s\n" "Based on" "$DISTRO_ID_LIKE" >> "$OUTPUT"
fi	

echo -e "\n====================" >> "$OUTPUT"
echo -e " Kernel Information" >> "$OUTPUT"
echo -e "====================\n\n" >> "$OUTPUT"


printf "%-${WIDTH}s : %s\n" "Kernel name" "$KERNEL_NAME" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n"  "Hostname"  "$HOSTNAME" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n"  "Kernel release" "$KERNEL_RELEASE" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n" "Kernel version"  "$KERNEL_VERSION" >> "$OUTPUT"
printf "%-${WIDTH}s : %s\n"  "Architecture"   "$ARCH" >> "$OUTPUT"






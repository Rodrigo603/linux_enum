#!/bin/bash
OUTPUT="output.txt"
echo "Linux Enumeration Script" > "$OUTPUT"
date >> "$OUTPUT"

source /etc/os-release

WIDTH=18
DISTRO_NAME="$NAME"
DISTRO_VERSION="$VERSION"
DISTRO_ID="$ID"
DISTRO_ID_LIKE="$ID_LIKE"


KERNEL_NAME=$(uname -s)
HOSTNAME=$(uname -n)
KERNEL_RELEASE=$(uname -r)
KERNEL_VERSION=$(uname -v)
ARCH=$(uname -m)


LOGGED_USERS=$(who)
TERMINAL_USERS=$(cat /etc/passwd | grep -vE "nologin|false|sync")


SUID_BINARIES=$(find / -perm -4000 -type f 2>/dev/null)
SGID_BINARIES=$(find / -perm -2000 -type f 2>/dev/null)

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


echo -e "\n===================" >> "$OUTPUT"
echo -e "       Users" >> "$OUTPUT"
echo -e "===================\n" >> "$OUTPUT"

echo -e "\n-------------------" >> "$OUTPUT"
echo -e "   Logged users" >> "$OUTPUT"
echo -e "-------------------\n" >> "$OUTPUT"
printf "%s\n" "$LOGGED_USERS" >> "$OUTPUT"


echo -e "\n-------------------" >> "$OUTPUT"
echo -e "  Terminal users" >> "$OUTPUT"
echo -e "-------------------\n" >> "$OUTPUT"
printf "%s\n" "$TERMINAL_USERS" >> "$OUTPUT"


echo -e "\n===================" >> "$OUTPUT"
echo -e "      Binaries" >> "$OUTPUT"
echo -e "===================\n" >> "$OUTPUT"


echo -e "\n-------------------" >> "$OUTPUT"
echo -e "   SUID Binaries" >> "$OUTPUT"
echo -e "-------------------\n" >> "$OUTPUT"
printf "%s\n" "$SUID_BINARIES" >> "$OUTPUT"


echo -e "\n-------------------" >> "$OUTPUT"
echo -e "   SGID Binaries" >> "$OUTPUT"
echo -e "-------------------\n" >> "$OUTPUT"
printf "%s\n" "$SGID_BINARIES" >> "$OUTPUT"




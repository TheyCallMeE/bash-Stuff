#!/bin/bash

# First read in the hex of the iso image and put the bootsector in a text file
# for parsing
# NOTE: this has been done already, refer to "bootsector.txt"
#sudo dd if=ubuntu-20.04.2.0-desktop-amd64.iso bs=512 count=100| hexdump -Cv | head -n 32 > bootsector.txt

# Then parse the text file to generate the desired hex values only
# After cutting out the hex values, manipulate them to fit the requirements of
# a .s file
cut -b 10-58 bootsector.txt | sed 's/  / /' | sed 's/ /0x/1' | sed 's/ /, 0x/g' | awk '{print ".byte " $0}' > bootsector.s

# Run the GNU assembler on the .s file
as -c bootsector.s -o bootsector.o

# Parse the object file
objdump -d bootsector.o

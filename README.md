# bash-Stuff
Files and programs revolving around using features available in bash

This repository includes shell scripts to better understand the features of bash, including how to write functions, while loops, regex parsing, etc.

There is also a shell script that disassembles the Ubuntu bootsector from the iso image, though such an image is too large to store here
It parses the already dissected bootsector which can be found in "bootsector.txt"
Please not that the "disassemble_bootsector.sh" script runs the command as to assemble the hexdump from the bootsector, this may not work with the as command of MacOS
The output is then read using objdump -d, the assembled bootsector can be found in "bootsector.o"

#!/bin/bash

echo '[+] Assembling with Nasm...'
nasm -f elf32 -Wall -g -o $1.o $1.nasm

echo '[+] linking...'
ld -o $1 $1.o

echo '[+] done!'

#!/bin/bash
make clean
if [ $# -eq 2 ]
    then
       make SCHEDULER=$1 CPUS=$2
       make qemu-nox SCHEDULER=$1 CPUS=$2
elif [ $# -eq 1 ]
    then
    make SCHEDULER=$1 
    make qemu-nox SCHEDULER=$1 
else
    make
    make qemu-nox

fi
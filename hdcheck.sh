#!/bin/sh
badblocks -b 1048576 -c 1024 -s -n -o /home/test1.txt /dev/sde1 2097152 1597152


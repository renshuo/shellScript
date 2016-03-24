#!/bin/sh

export LANG=zh_CN.GB18030

minicom -D /dev/ttyUSB1 -b 115200  | grep "crosspoint buffer output"

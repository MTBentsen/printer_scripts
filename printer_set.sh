#!/bin/bash
echo enter printer name
read a
echo enter printer location
read b
echo enter printer server path
read c
lpadmin -p PS1-D265LJC -L "a" -E -v b -P c -o printer-is-shared=false -o auth-info-required=negotiate

#!/bin/bash
# ./create-user bob mary job
for u in $*

do
	useradd $u
	echo $u:Password1 | chpasswd
	passwd -e $u
done

#!/bin/ksh
# stop_epic_all.ksh
# Copyright (c)2003-2013 Epic Systems Corporation
#
### Usage:
#   stop_epic_all.ksh
#
### Description:
#
# Script to stop all Cache instances on a given server as part of OS shutdown. 
# Should only be run as root user
# Script NOT intended for ECP environment where app instances also need to be stopped.
#
### Defaults and Assumptions:
#   
#   -Instance specific scripts are in /epic/<Instance>/bin
#   -UNIX 'id', 'grep', 'awk'
#
### Requirements:
#
#   - User must be Root
#   - Cache Version must be 5.2 or higher
#   - Assumes Epic 2010+ runlevels and RedAlert path
#		These can be altered in customization section
#
### Revision History:
#
# jschea	9/10	v0.1	previous versions, QA completed
# jboichut	5/12	v1.0	baseline version, minor update - RedAlert control added
# jboichut	4/13	v1.1	Epic 2014 revision - no changes
# jboichut	7/13	v1.2	Updated comments for CUSTOMIZATION section, additional logging added
#
########
# CUSTOMIZATION
########

# log file
#LogDir="/tmp"
LogDir="/epic/logs"
LogFile="${LogDir}/$(basename $0).out.$(date '+%m%d')"

# Command to force an instance down
# Path to command prepended during program execution
ForceCmd="runlevel --force --yes-to-force"

# RedAlert control
integer StopRA=0	# change to 0 to leave RedAlert running
# RedAlert stop command
RAStopScript="/epic/redalert/bin/ra_sched --stop"

########
# END CUSTOMIZATION
########

########
# START
# EPIC DEFINED FUNCTIONS
########

##########
# _GetPlatform(): from standard functions library
# Input: none
# Output: System, OSRelease, OSVersion
##########

_GetPlatform()
{
	set -A UnameArr $(uname -a)
	System=${UnameArr[0]}
	OSRelease=${UnameArr[2]}

	# OSVersion may have multiple IFS separated words, hence the need for
	# an individual uname -v command
	OSVersion=$(uname -v)
}

# Call _GetPlatform now so we can run _SetAliases
_GetPlatform

##########
# _SetAliases: from standard function library
# Included directly to set aliases at base level
# Input: ${System} value from _GetPlatform()
# Output: None
# Affects aliases
##########

case ${System} in
	SunOS)
		alias grep=/usr/xpg4/bin/grep
		alias egrep=/usr/xpg4/bin/egrep
		alias awk=/usr/xpg4/bin/awk
		alias sed=/usr/xpg4/bin/sed
		alias id=/usr/xpg4/bin/id
		alias tr=/usr/xpg4/bin/tr
		Id="/usr/xpg4/bin/id -u"
		unset PERL5LIB
	;;
	Linux)
		alias mailx=mail
	;;
	*)
	;;
esac

########
# END
# EPIC DEFINED FUNCTIONS
########

echo "Please see log file ${LogFile} for output" 

echo "$(date +%T) - $(basename $0) started by ${LOGNAME}" >> ${LogFile}

# Stop the RedAlert process in background
if (( $StopRA != 0 ))
  then
	echo "$(date +%T) - su - epicadm -c \"${RAStopScript}\" & " >> ${LogFile} 
	su - epicadm -c "${RAStopScript}" >> ${LogFile} 2>&1 &
fi

echo "Stopping all instances" >> ${LogFile}
buff=$(ccontrol qlist|cut -d^ -f2| sed 's/cachesys/bin/' )
for dir in ${buff}; do
	echo "$(date +%T) - Running command: ${dir}/${ForceCmd}" >> ${LogFile}
	${dir}/${ForceCmd} 1>> ${LogFile} 2>> ${LogFile} &
done

Counter=1
while (( $Counter<150));
do
	AllDown="True"

	buff=$(ccontrol qlist|cut -d^ -f4|cut -d, -f1 )
	for state in ${buff}; do
		if [[ ${state} != @(*down*|*crashed*|*in use by node*) ]]
		then
			AllDown="False"
		fi
	done

	if [[ ${AllDown} != "False" ]]; then
		echo "$(date +%T) - All instances stopped successfully" >> ${LogFile}
		break
	fi
	sleep 1
	((Counter=Counter+1))
	if [[ ${Counter} = 150 ]]; then
		echo "$(date +%T) - WARNING: Unable to bring down all instances after 150 seconds" >> ${LogFile}
	fi
done

echo "exit 0 for stop_epic_all.ksh" >> ${LogFile}
exit 0

#!/usr/bin/env bash

# Look for environmental variables to set the:

# wallet?
# rigName?
# pool1?

# We will append to the config.ini file
# cpuThreads
if [ ! -z "$CPUTHREADS" ] 
then
    echo "Appending cpuThreads = $CPUTHREADS"
    echo "cpuThreads = $CPUTHREADS" >> config.ini
fi

if [ ! -z "$RIGNAME" ]
then
    echo "Appending rigName = $RIGNAME"
    echo "rigName = $RIGNAME" >> config.ini
fi

./nanominer
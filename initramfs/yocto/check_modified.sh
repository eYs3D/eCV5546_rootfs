#!/bin/bash

if [ -f "bbfile.md5" ]; then
    md5sum -c bbfile.md5
    if [ "$?" == "0" ]; then
        exit 0
    fi
fi

find meta-eys3d/ -type f -exec md5sum {} \; > bbfile.md5.0
find ecv5546_build/conf -type f -exec md5sum {} \; >> bbfile.md5.0
exit 1


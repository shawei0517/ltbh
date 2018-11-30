#!/bin/sh
apt-ftparchive packages ./ > ./Packages;sed -i -e '/^SHA/d' ./Packages;bzip2 -c9k ./Packages > ./Packages.bz2;printf "Origin: 力天百汇备用\nLabel: 力天百汇备用\nSuite: stable\nVersion: 1.0\nCodename: ltbh\nArchitecture: iphoneos-arm\nComponents: main\nDescription: 力天百汇定制源\nMD5Sum:\n "$(cat ./Packages | md5sum | cut -d ' ' -f 1)" "$(stat ./Packages --printf="%s")" Packages\n "$(cat ./Packages.bz2 | md5sum | cut -d ' ' -f 1)" "$(stat ./Packages.bz2 --printf="%s")" Packages.bz2\n" >Release;exit 0;

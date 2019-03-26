#!/usr/bin/env bash
wget -i brackets_1.13.txt 
mv Brackets.Release.1.13.32-bit.deb brackets_1.13_i386.deb
mv Brackets.Release.1.13.64-bit.deb brackets_1.13_amd64.deb
dpkg-sig -k 959CDDD1 --sign bundler *.deb
mv *.deb ../../

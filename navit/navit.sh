#!/bin/sh
if [ -f /opt/qtmoko/bin/qgpsholder ]
then
    qgpsholder navit
else
    navit
fi
#!/bin/sh

# NOTE: One needs to 'make' and 'make install' qtmoko on armhf-chroot as
#       described in the qtmoko README.
#
#       Then one needs to have imagemagick within the chroot:
#              apt-get install imagemagick
#
#       Additionally one needs to install libfreetype6-dev and zlib1gi-dev for
#       armhf into the chroot:
#              xapt -a armhf -m libfreetype6-dev zlib1g-dev
#
#       Finally one needs to greate versionless gcc link:
#              ln -s /usr/bin/arm-linux-gnueabihf-gcc-4.7 /usr/bin/arm-linux-gnueabihf-gcc
#              ln -s /usr/bin/arm-linux-gnueabihf-g++-4.7 /usr/bin/arm-linux-gnueabihf-g++

export LD_LIBRARY_PATH=/root/qte/build-gta04/qtopiacore/host/lib/
export QT_GUI_CFLAGS='-DQT_QPAINTER_USE_EVENT_QT=0 -DQT_QPAINTER_USE_EVENT_GLIB=1'
export PATH=${PATH}:/root/qte/build-gta04/sdk/qtopiacore/host/bin
./configure --prefix=/opt/qtmoko --host=arm-linux-gnueabihf
make
make install

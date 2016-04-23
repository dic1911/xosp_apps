#!/bin/bash

read pardana

XOSPREL=out/xospapps_releases
cd .. 
source build/./envsetup.sh >&/dev/null
mkdir -p $XOSPREL

DEVICETARGET=$(get_build_var TARGET_DEVICE)
PRODUCT_OUT=$(get_build_var PRODUCT_OUT)
PRODUCT_REVISION=Revision4
PRODUCT_RELEASE=RL5
BUILD_MAJOR=5
BUILD_MINOR=4
OUT_DIR=$(get_build_var OUT_DIR)
DATE=` date +%d-%m-%Y`

function build_xospapps()
{
    cd xosp_apps
    mkdir -p out
    cd out
    mkdir system 
    cd ..
    cp -avr Script/META-INF out
    cp -avr Sources/system out
    cd out
    
    UPDATERPATH=META-INF/com/google/android
    sed -i '8 a DEFREL='$PRODUCT_RELEASE'' $UPDATERPATH/update-binary
    sed -i '9 a DEFREV='$PRODUCT_REVISION'' $UPDATERPATH/update-binary
    zip -r "XOSPApps-$ARCHTARGET-$BUILD_MAJOR.$BUILD_MINOR-$DATE".zip META-INF system
    mv "XOSPApps-$ARCHTARGET-$BUILD_MAJOR.$BUILD_MINOR-$DATE.zip" $OUT_DIR/xospapps_releases 
    cd ..
    rm -rf out
}

if [[ "$pardana" == pardanaisthebest ]]; then
    echo -e "Nilac is that you?"
    read breakfast_target
    if breakfast $breakfast_target >&/dev/null; then
        ARCHTARGET=$(get_build_var TARGET_ARCH)
        build_xospapps
    else 
    echo -e "Are you drunk?"
    exit 0;
    fi 
else 
    echo -e "Sorry you're not Nilac"
    exit 0
fi

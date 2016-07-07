#!/sbin/sh
# 
# /system/addon.d/50-xosp.sh
# During an upgrade this script will backup XOSPApps and restore them after the upgrade is complete
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
etc/permissions/com.sony.device.xml
etc/permissions/com.sonyericsson.system.xml
etc/permissions/com.sonyericsson.updatecenter.xml
etc/permissions/com.sonyericsson.uxpres.xml
etc/permissions/com.sonymobile.provider.tasks.xml
framework/com.sony.device.jar
framework/com.sonyericsson.system.jar
framework/com.sonyericsson.updatecenter.jar
framework/com.sonyericsson.uxpres.jar
framework/com.sonyericsson.uxp.jar
framework/com.sonymobile.provider.tasks.jar
framework/SemcGenericUxpRes/SemcGenericUxpRes.apk
lib/libdlnaplayer.so
app/AudioRecorder/AudioRecorder.apk
app/ClockWidgets/ClockWidgets.apk
app/ClockWidgets(Black)/ClockWidgets(Black).apk
app/Home/Home.apk
app/WallpaperPicker/WallpaperPicker.apk
app/Weather/Weather.apk
app/WeatherWidget/WeatherWidget.apk
app/WorldClockWidget/WorldClockWidget.apk
priv-app/Album/Album.apk
priv-app/Album/lib/arm/libdrmstream_depjb.so
priv-app/Album/lib/arm/libgifreader.so
priv-app/Album/lib/arm/libimagecalc.so
priv-app/Album/lib/arm/libjpeguser.so
priv-app/Album/lib/arm/libmaketc.so
priv-app/Album/lib/arm/libnativeio.so
priv-app/Album/lib/arm/libsceniccore.so
priv-app/Album/lib/arm/libspf.so
priv-app/Album/lib/arm/libSQHashGenerator.so
priv-app/Music/Music.apk
priv-app/Music/lib/arm/libgabi++_shared.so
priv-app/Music/lib/arm/libgnmc_decoder.1.1.8.so
priv-app/Music/lib/arm/libgnsdk_dsp.3.09.0.so
priv-app/Music/lib/arm/libgnsdk_java_marshal.1.1.8.so
priv-app/Music/lib/arm/libgnsdk_manager.3.09.0.so
priv-app/Music/lib/arm/libgnsdk_musicid.3.09.0.so
priv-app/Music/lib/arm/libgnsdk_musicid_file.3.09.0.so
priv-app/Music/lib/arm/libgnsdk_storage_sqlite.3.09.0.so
priv-app/PhotoAnalyzer/PhotoAnalyzer.apk
priv-app/PhotoAnalyzer/lib/arm/libPhotoAnalyzer.so
priv-app/PhotoAnalyzer/lib/arm/libPhotoAnalyzerjni.so
priv-app/PhotoEditor/PhotoEditor.apk
priv-app/PhotoEditor/lib/arm/libjni_eglfence.so
priv-app/PhotoEditor/lib/arm/libjni_filtershow_filters.so
priv-app/PhotoEditor/lib/arm/librs.convolve3x3.so
priv-app/PhotoEditor/lib/arm/librs.grad.so
priv-app/PhotoEditor/lib/arm/librs.grey.so
priv-app/PhotoEditor/lib/arm/librs.saturation.so
priv-app/PhotoEditor/lib/arm/librs.vignette.so
priv-app/PhotoEditor/lib/arm/librsjni.so
priv-app/PhotoEditor/lib/arm/libRSSupport.so
priv-app/SemCalendar/SemCalendar.apk
priv-app/SemcPodcast/SemcPodcast.apk
priv-app/SomcPodcast/lib/arm/libjpeguser.so
priv-app/SomcPodcast/lib/arm/libnativeio.so
priv-app/textinput-tng/textinput-tng.apk
priv-app/textinput-tng/lib/arm/libswiftkeysdk-java.so
priv-app/Video/Video.apk
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/"$FILE"
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/"$FILE" "$R"
      echo "ro.xosp.apps=dirty" >> /system/build.prop
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac

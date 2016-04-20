#!/sbin/sh
# 
# /system/addon.d/50-xosp.sh
# During an upgrade this script will backup XOSPApps and restore them after the upgrade is complete
#

. /tmp/backuptool.functions

list_files() {
cat <<EOF
app/AudioRecorder/AudioRecorder.apk
app/ClockWidget/ClockWidget.apk
app/Home/Home.apk
app/Sketch/Sketch.apk
app/SmartConnect/SmartConnect.apk
app/WallpaperPicker/WallpaperPicker.apk
app/Weather/Weather.apk
app/WeatherWidget/WeatherWidget.apk
etc/permissions/com.sony.device.xml
etc/permissions/com.sonyericsson.system.xml
etc/permissions/com.sonyericsson.updatecenter.xml
etc/permissions/com.sonyericsson.uxpres.xml
etc/permissions/com.sonymobile.provider.tasks.xml
etc/framework/com.sony.device.jar
etc/framework/com.sonyericsson.system.jar
etc/framework/com.sonyericsson.updatecenter.jar
etc/framework/com.sonyericsson.uxpres.jar
etc/framework/com.sonymobile.provider.tasks.jar
etc/framework/SemcGenericUxpRes.apk
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
priv-app/TrackID/TrackID.apk
priv-app/TrackID/lib/arm/libdeezer.so
priv-app/TrackID/lib/arm/libgabi++_shared.so
priv-app/TrackID/lib/arm/libgnsdk_acr.3.08.0.so
priv-app/TrackID/lib/arm/libgnsdk_dsp.3.08.0.so
priv-app/TrackID/lib/arm/libgnsdk_epg.3.08.0.so
priv-app/TrackID/lib/arm/libgnsdk_java_marshal.so
priv-app/TrackID/lib/arm/libgnsdk_link.3.08.0.so
priv-app/TrackID/lib/arm/libgnsdk_lookup_fplocal.3.08.0.so
priv-app/TrackID/lib/arm/libgnsdk_manager.3.08.0.so
priv-app/TrackID/lib/arm/libgnsdk_musicid.3.08.0.so
priv-app/TrackID/lib/arm/libgnsdk_storage_sqlite.3.08.0.so
priv-app/TrackID/lib/arm/libgnsdk_video.3.08.0.so
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

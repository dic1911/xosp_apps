#Copy essentials XOSPApps

ifeq ($(IS_ARM64), TRUE)

PRODUCT_COPY_FILES += \
	xosp_apps/arm64/textinput-tng/textinput-tng.apk:system/priv-app/textinput-tng/textinput-tng.apk \
	xosp_apps/arm64/textinput-tng/lib/arm/libswiftkeysdk-java.so:system/priv-app/textinput-tng/lib/arm/libswiftkeysdk-java.so \
	xosp_apps/arm64/Album/lib/arm/libgifreader.so:system/priv-app/Album/lib/arm/libgifreader.so \
	xosp_apps/arm64/Album/lib/arm/libimagecalc.so:system/priv-app/Album/lib/arm/libimagecalc.so \
	xosp_apps/arm64/Album/lib/arm/libmaketc.so:system/priv-app/Album/lib/arm/libmaketc.so \
	xosp_apps/arm64/Album/lib/arm/libsceniccore.so:system/priv-app/Album/lib/arm/libsceniccore.so \
	xosp_apps/arm64/Album/lib/arm/libspf.so:system/priv-app/Album/lib/arm/libspf.so \
	xosp_apps/arm64/Album/lib/arm/libSQHashGenerator.so:system/priv-app/Album/lib/arm/libSQHashGenerator.so 
else

PRODUCT_COPY_FILES += \
	xosp_apps/essentials/textinput-tng/textinput-tng.apk:system/priv-app/textinput-tng/textinput-tng.apk \
	xosp_apps/essentials/textinput-tng/lib/arm/libswiftkeysdk-java.so:system/priv-app/textinput-tng/lib/arm/libswiftkeysdk-java.so \
	xosp_apps/essentials/Album/lib/arm/libgifreader.so:system/priv-app/Album/lib/arm/libgifreader.so \
	xosp_apps/essentials/Album/lib/arm/libimagecalc.so:system/priv-app/Album/lib/arm/libimagecalc.so \
	xosp_apps/essentials/Album/lib/arm/libmaketc.so:system/priv-app/Album/lib/arm/libmaketc.so \
	xosp_apps/essentials/Album/lib/arm/libsceniccore.so:system/priv-app/Album/lib/arm/libsceniccore.so \
	xosp_apps/essentials/Album/lib/arm/libspf.so:system/priv-app/Album/lib/arm/libspf.so \
	xosp_apps/essentials/Album/lib/arm/libSQHashGenerator.so:system/priv-app/Album/lib/arm/libSQHashGenerator.so \
	xosp_apps/essentials/Album/lib/arm/libdrmstream_depjb.so:system/priv-app/Album/lib/arm/libdrmstream_depjb.so \
	xosp_apps/essentials/Album/lib/arm/libjpeguser.so:system/priv-app/Album/lib/arm/libjpeguser.so \
	xosp_apps/essentials/Album/lib/arm/libnativeio.so:system/priv-app/Album/lib/arm/libnativeio.so 
endif

PRODUCT_COPY_FILES += \
	xosp_apps/essentials/Home/Home.apk:system/app/Home/Home.apk \
	xosp_apps/essentials/SemcClock/SemcClock.apk:system/priv-app/SemcClock/SemcClock.apk \
	xosp_apps/essentials/SemcEmail/SemcEmail.apk:system/priv-app/SemcEmail/SemcEmail.apk \
	xosp_apps/essentials/XperiaServices/XperiaServices.apk:system/app/XperiaServices/XperiaServices.apk \
	xosp_apps/essentials/Album/Album.apk:system/priv-app/Album/Album.apk
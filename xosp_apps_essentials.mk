#Copy essentials XOSPApps

ifeq ($(IS_ARM64), TRUE)

PRODUCT_COPY_FILES += \
	xosp_apps/arm64/textinput-tng/textinput-tng.apk:system/priv-app/textinput-tng/textinput-tng.apk \
	xosp_apps/arm64/textinput-tng/lib/arm/libswiftkeysdk-java.so:system/priv-app/textinput-tng/lib/arm/libswiftkeysdk-java.so \
	xosp_apps/arm64/Album/lib/arm/libgifreader.so:system/lib/libgifreader.so \
	xosp_apps/arm64/Album/lib/arm/libimagecalc.so:system/lib/libimagecalc.so \
	xosp_apps/arm64/Album/lib/arm/libmaketc.so:system/lib/libmaketc.so \
	xosp_apps/arm64/Album/lib/arm/libsceniccore.so:system/lib/libsceniccore.so \
	xosp_apps/arm64/Album/lib/arm/libspf.so:system/lib/libspf.so \
	xosp_apps/arm64/Album/lib/arm/libSQHashGenerator.so:system/lib/libSQHashGenerator.so 
else

PRODUCT_COPY_FILES += \
	xosp_apps/essentials/textinput-tng/textinput-tng.apk:system/priv-app/textinput-tng/textinput-tng.apk \
	xosp_apps/essentials/textinput-tng/lib/arm/libswiftkeysdk-java.so:system/priv-app/textinput-tng/lib/arm/libswiftkeysdk-java.so \
	xosp_apps/essentials/Album/lib/arm/libgifreader.so:system/lib/libgifreader.so \
	xosp_apps/essentials/Album/lib/arm/libimagecalc.so:system/lib/libimagecalc.so \
	xosp_apps/essentials/Album/lib/arm/libmaketc.so:system/lib/libmaketc.so \
	xosp_apps/essentials/Album/lib/arm/libsceniccore.so:system/lib/libsceniccore.so \
	xosp_apps/essentials/Album/lib/arm/libspf.so:system/lib/libspf.so \
	xosp_apps/essentials/Album/lib/arm/libSQHashGenerator.so:system/lib/libSQHashGenerator.so \
	xosp_apps/essentials/Album/lib/arm/libdrmstream_depjb.so:system/lib/libdrmstream_depjb.so \
	xosp_apps/essentials/Album/lib/arm/libjpeguser.so:system/lib/libjpeguser.so \
	xosp_apps/essentials/Album/lib/arm/libnativeio.so:system/lib/libnativeio.so 
endif

PRODUCT_COPY_FILES += \
	xosp_apps/essentials/Home/Home.apk:system/app/Home/Home.apk \
	xosp_apps/essentials/SemcClock/SemcClock.apk:system/priv-app/SemcClock/SemcClock.apk \
	xosp_apps/essentials/SemcEmail/SemcEmail.apk:system/priv-app/SemcEmail/SemcEmail.apk \
	xosp_apps/essentials/XperiaServices/XperiaServices.apk:system/app/XperiaServices/XperiaServices.apk \
	xosp_apps/essentials/Album/Album.apk:system/priv-app/Album/Album.apk
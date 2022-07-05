#!/bin/bash

VER_CODE=.VER_CODE

PKG=IchnaeaNlpBackend
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/microg/IchnaeaNlpBackend/releases/download/v1.5.0/IchnaeaNlpBackend.apk" -L -o $PKG/$PKG.apk
	echo "1.5.0" > $PKG/$VER_CODE
fi

PKG=NominatimGeocoderBackend
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/microg/NominatimGeocoderBackend/releases/download/v1.2.1/NominatimGeocoderBackend.apk" -L -o $PKG/$PKG.apk
	echo "1.2.1" > $PKG/$VER_CODE
fi

PKG=UnifiedNlp
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/microg/UnifiedNlp/releases/download/v1.6.8/UnifiedNlp.apk" -L -o $PKG/$PKG.apk
	echo "1.6.8" > $PKG/$VER_CODE
fi

PKG=FDroidPrivilegedExtension
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://f-droid.org/repo/org.fdroid.fdroid.privileged_2130.apk" -o $PKG/$PKG.apk
	echo "0.2.13" > $PKG/$VER_CODE
fi

PKG=FDroid
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://f-droid.org/repo/org.fdroid.fdroid_1015052.apk" -o $PKG/$PKG.apk
	echo "1.15.2" > $PKG/$VER_CODE
fi

PKG=AuroraServices
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://gitlab.com/AuroraOSS/AuroraServices/uploads/c22e95975571e9db143567690777a56e/AuroraServices_v1.1.1.apk" -o $PKG/$PKG.apk
	echo "1.1.1" > $PKG/$VER_CODE
fi

PKG=AuroraDroid
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://f-droid.org/repo/com.aurora.adroid_8.apk" -o $PKG/$PKG.apk
	echo "1.0.8" > $PKG/$VER_CODE
fi

PKG=AuroraStore
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://f-droid.org/repo/com.aurora.store_41.apk" -o $PKG/$PKG.apk
	echo "4.1.1" > $PKG/$VER_CODE
fi

# PKG=TrichromeLibrary
# if [[ ! -f $PKG/$PKG.apk ]]; then
	# curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3649596" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	# echo "103.0.5060.70" > $PKG/$VER_CODE
# fi

PKG=SetEdit
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://f-droid.org/repo/io.github.muntashirakon.setedit_7.apk" -o $PKG/$PKG.apk
	echo "2.2" > $PKG/$VER_CODE
fi

PKG=FingerAds
if [[ ! -f $PKG/$PKG.apk ]]; then
	cp $PKG/$PKG.apk.zip $PKG/$PKG.apk
	echo "3.3.55" > $PKG/$VER_CODE
fi

PKG=TraccarClient
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://f-droid.org/repo/org.traccar.client_78.apk" -o $PKG/$PKG.apk
	echo "6.17" > $PKG/$VER_CODE
fi

PKG=ZeroTierOne
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://download.zerotier.com/dist/ZeroTierOne.apk" -o $PKG/$PKG.apk
	echo "1.8.9-1" > $PKG/$VER_CODE
fi

PKG=WireGuard
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3497033" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	echo "1.0.20220516" > $PKG/$VER_CODE
fi

PKG=Davx5
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/bitfireAT/davx5-ose/releases/download/v4.2.2-ose/davx5-ose-4.2.2-standard-release.apk" -L -o $PKG/$PKG.apk
	echo "4.2.2-ose" > $PKG/$VER_CODE
fi

PKG=NextCloud
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3588091" -A "Mozilla/5.0 ( ; ; rv: ) / / "  -L -o $PKG/$PKG.apk
	echo "3.20.3" > $PKG/$VER_CODE
fi

PKG=VLC
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3173236" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	echo "3.4.4" > $PKG/$VER_CODE
fi

PKG=Bitwarden
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/bitwarden/mobile/releases/download/v2022.6.0/com.x8bit.bitwarden.apk" -L -o $PKG/$PKG.apk
	echo "2022.6.0" > $PKG/$VER_CODE
fi

PKG=GoogleAuthenticator
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=1162318" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	echo "5.10" > $PKG/$VER_CODE
fi

PKG=FirefoxBeta
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/mozilla-mobile/fenix/releases/download/v103.0.0-beta.2/fenix-103.0.0-beta.2-arm64-v8a.apk" -L -o $PKG/$PKG.apk
	echo "103.0.0-beta.2" > $PKG/$VER_CODE
fi

PKG=OpenCamera
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://sourceforge.net/projects/opencamera/PKGs/v_1_50_1/OpenCamera.apk/download" -L -o $PKG/$PKG.apk
	echo "1.50.1" > $PKG/$VER_CODE
fi

PKG=GhostCommander
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3313421" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	echo "1.60.7" > GhostCommander/$VER_CODE
fi

PKG=GhostCommanderSMB
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=1809657" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	echo "1.02" > $PKG/$VER_CODE
fi

PKG=GhostCommanderWebDAV
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=2875434" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	echo "1.04" > $PKG/$VER_CODE
fi

# PKG=HMSCore
# if [[ ! -f $PKG/$PKG.apk ]]; then
	# curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3566138" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	# echo "6.5.1.302" > $PKG/$VER_CODE
# fi

PKG=Lawnchair
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/LawnchairLauncher/lawnchair/releases/download/v12.1.0-alpha.3/Lawnchair.12.1.0.Alpha.3.apk" -L -o $PKG/$PKG.apk
	echo "12.1.0-alpha.3" > $PKG/$VER_CODE
fi

PKG=RotationControl
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=176192" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	echo "1.0" > $PKG/$VER_CODE
fi

PKG=QKSMS
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/moezbhatti/qksms/releases/download/v3.9.4/QKSMS-v3.9.4.apk" -L -o $PKG/$PKG.apk
	echo "3.9.4" > $PKG/$VER_CODE
fi

PKG=OsmAndPlus
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://f-droid.org/repo/net.osmand.plus_421.apk" -o $PKG/$PKG.apk
	echo "4.1.11" > $PKG/$VER_CODE
fi

PKG=ScreenshotTile
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/cvzi/ScreenshotTile/releases/download/v1.18.0/com.github.cvzi.screenshottile_69.apk" -L -o $PKG/$PKG.apk
	echo "1.18.0" > $PKG/$VER_CODE
fi

PKG=SimpleGalleryPro
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/SimpleMobileTools/Simple-Gallery/releases/download/6.23.12/gallery-371-foss-release.apk" -L -o $PKG/$PKG.apk
	echo "6.23.12" > $PKG/$VER_CODE
fi

# PKG=Snapseed
# if [[ ! -f $PKG/$PKG.apk ]]; then
	# curl "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=992746" -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $PKG/$PKG.apk
	# echo "2.19.1.303051424" > $PKG/$VER_CODE
# fi

PKG=TencentMyApp
if [[ ! -f $PKG/$PKG.apk ]]; then
	cp $PKG/$PKG.apk.zip $PKG/$PKG.apk
	echo "8.2.4" > $PKG/$VER_CODE
fi

PKG=CoolApk
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://dl.coolapk.com/down?pn=com.coolapk.market&id=NDU5OQ&h=46bb9d98&from=from-web" -L -o "$FILE"/"$FILE".apk
	echo "12.3.1" > "$FILE"/"$VERSION_CODE"
fi

PKG=LibreraReader
if [[ ! -f $PKG/$PKG.apk ]]; then
	curl "https://github.com/foobnix/LibreraReader/releases/download/8.5.23/Librera.Fdroid-8.5.23-uni.apk" -L -o $PKG/$PKG.apk
	echo "8.5.23" > $PKG/$VER_CODE
fi

#!/bin/bash

VERSION_CODE=.version_code

#FILE=AndroidSharedLibrary
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=2962893 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
#	echo "1" > "$FILE"/"$VERSION_CODE"
#fi

#FILE=AndroidServicesLibrary
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3607200 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
#	echo "aml_ext_311812040" > "$FILE"/"$VERSION_CODE"
#fi

FILE=GoogleServicesFramework
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3459755 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "12-7567768" > "$FILE"/"$VERSION_CODE"
fi

FILE=GooglePlayServices
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3635770 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "22.24.13" > "$FILE"/"$VERSION_CODE"
fi

FILE=GooglePlayStore
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3645411 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "31.2.23-21" > "$FILE"/"$VERSION_CODE"
fi

#FILE=AndroidSystemIntelligence
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3589597 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
#	echo "S.20.playstore.pixel4.451178336" > "$FILE"/"$VERSION_CODE"
#fi

FILE=GooglePartnerSetup
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3372816 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "100.404341199" > "$FILE"/"$VERSION_CODE"
fi

#FILE=AndroidSetup
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3427060 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
#	echo "232.431119513" > "$FILE"/"$VERSION_CODE"
#fi

FILE=IchnaeaNlpBackend
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://github.com/microg/IchnaeaNlpBackend/releases/download/v1.5.0/IchnaeaNlpBackend.apk -L -o "$FILE"/"$FILE".apk
	echo "1.5.0" > "$FILE"/"$VERSION_CODE"
fi

FILE=NominatimGeocoderBackend
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://github.com/microg/NominatimGeocoderBackend/releases/download/v1.2.1/NominatimGeocoderBackend.apk -L -o "$FILE"/"$FILE".apk
	echo "1.2.1" > "$FILE"/"$VERSION_CODE"
fi

FILE=UnifiedNlp
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://github.com/microg/UnifiedNlp/releases/download/v1.6.8/UnifiedNlp.apk -L -o "$FILE"/"$FILE".apk
	echo "1.6.8" > "$FILE"/"$VERSION_CODE"
fi

FILE=FDroidPrivilegedExtension
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/org.fdroid.fdroid.privileged_2130.apk -o "$FILE"/"$FILE".apk
	echo "0.2.13" > "$FILE"/"$VERSION_CODE"
fi

FILE=FDroid
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/org.fdroid.fdroid_1015052.apk -o "$FILE"/"$FILE".apk
	echo "1.15.2" > "$FILE"/"$VERSION_CODE"
fi

FILE=AuroraServices
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://gitlab.com/AuroraOSS/AuroraServices/uploads/c22e95975571e9db143567690777a56e/AuroraServices_v1.1.1.apk -o "$FILE"/"$FILE".apk
	echo "1.1.1" > "$FILE"/"$VERSION_CODE"
fi

FILE=AuroraDroid
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/com.aurora.adroid_8.apk -o "$FILE"/"$FILE".apk
	echo "1.0.8" > "$FILE"/"$VERSION_CODE"
fi

FILE=AuroraStore
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/com.aurora.store_41.apk -o "$FILE"/"$FILE".apk
	echo "4.1.1" > "$FILE"/"$VERSION_CODE"
fi

#FILE=TrichromeLibrary
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3618509 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
#fi

FILE=BromiteSystemWebView
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://github.com/bromite/bromite/releases/download/102.0.5005.96/arm64_SystemWebView.apk -L -o "$FILE"/"$FILE".apk
	echo "102.0.5005.96" > "$FILE"/"$VERSION_CODE"
fi

FILE=SetEdit
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/io.github.muntashirakon.setedit_7.apk -o "$FILE"/"$FILE".apk
	echo "2.2" > "$FILE"/"$VERSION_CODE"
fi

FILE=FingerAds
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	cp FingerAds/FingerAds.apk.zip FingerAds/FingerAds.apk
	echo "3.3.55" > "$FILE"/"$VERSION_CODE"
fi

FILE=TraccarClient
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/org.traccar.client_78.apk -o "$FILE"/"$FILE".apk
	echo "6.17" > "$FILE"/"$VERSION_CODE"
fi

FILE=BaiduInput
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl "https://srf.baidu.com/?c=j&e=d&from=1000e&platform=android&ref=index_entrance_android_click" -L -o "$FILE"/"$FILE".apk
	echo "10.13.0.20" > "$FILE"/"$VERSION_CODE"
fi

FILE=Bitwarden
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://github.com/bitwarden/mobile/releases/download/v2022.05.0/com.x8bit.bitwarden.apk -L -o "$FILE"/"$FILE".apk
	echo "2022.05.0" > "$FILE"/"$VERSION_CODE"
fi

FILE=Estrongs
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3238334 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "4.2.9.6" > "$FILE"/"$VERSION_CODE"
fi

FILE=FirefoxBeta
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://github.com/mozilla-mobile/fenix/releases/download/v103.0.0-beta.1/fenix-103.0.0-beta.1-arm64-v8a.apk -L -o "$FILE"/"$FILE".apk
	echo "103.0.0-beta.1" > "$FILE"/"$VERSION_CODE"
fi

FILE=OpenCamera
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://sourceforge.net/projects/opencamera/files/v_1_50_1/OpenCamera.apk/download -L -o "$FILE"/"$FILE".apk
	echo "1.50.1" > "$FILE"/"$VERSION_CODE"
fi

FILE=GhostCommander
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/com.ghostsq.commander_433.apk -o "$FILE"/"$FILE".apk
	echo "1.61b3" > GhostCommander/"$VERSION_CODE"
fi

FILE=GhostCommanderSMB
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/com.ghostsq.commander.smb_10.apk -o "$FILE"/"$FILE".apk
	echo "1.02" > "$FILE"/"$VERSION_CODE"
fi

#FILE=GhostCommanderWebDAV
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=2875434 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
#	echo "1.0.4" > "$FILE"/"$VERSION_CODE"
#fi

FILE=HMSCore
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3566138 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "6.5.1.302" > "$FILE"/"$VERSION_CODE"
fi

FILE=Lawnchair
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/ch.deletescape.lawnchair.plah_2001.apk -o "$FILE"/"$FILE".apk
	echo "1.2.1.2001" > "$FILE"/"$VERSION_CODE"
fi

FILE=RotationControl
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=176192 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "1.0" > "$FILE"/"$VERSION_CODE"
fi

FILE=Messages
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3645711 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "20220623_04_RC00.phone" > "$FILE"/"$VERSION_CODE"
fi

FILE=OsmAndPlus
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/net.osmand.plus_421.apk -o "$FILE"/"$FILE".apk
	echo "4.1.11" > "$FILE"/"$VERSION_CODE"
fi

FILE=ScreenshotTile
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/com.github.cvzi.screenshottile_68.apk -o "$FILE"/"$FILE".apk
	echo "1.17.2" > "$FILE"/"$VERSION_CODE"
fi

FILE=SimpleGalleryPro
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://github.com/SimpleMobileTools/Simple-Gallery/releases/download/6.23.12/gallery-371-foss-release.apk -L -o "$FILE"/"$FILE".apk
	echo "6.23.12" > "$FILE"/"$VERSION_CODE"
fi

FILE=Snapseed
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=992746 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"/"$FILE".apk
	echo "2.19.1.303051424" > "$FILE"/"$VERSION_CODE"
fi

FILE=Wandoujia
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://ucan.25pp.com/Wandoujia_wandoujia_sem_default.apk -L -o "$FILE"/"$FILE".apk
	echo "8.1.2" > "$FILE"/"$VERSION_CODE"
fi

FILE=LibreraReader
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/com.foobnix.pro.pdf.reader_4390.apk -o "$FILE"/"$FILE".apk
	echo "8.5.12" > "$FILE"/"$VERSION_CODE"
fi

FILE=KOReader
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/org.koreader.launcher.fdroid_9084.apk -o "$FILE"/"$FILE".apk
	echo "2022.05.1" > "$FILE"/"$VERSION_CODE"
fi

FILE=GeometricWeather
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/wangdaye.com.geometricweather_30102.apk -o "$FILE"/"$FILE".apk
	echo "3.102" > "$FILE"/"$VERSION_CODE"
fi

#FILE=Zulip
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://github.com/zulip/zulip-mobile/releases/download/v27.186/app-arm64-v8a-release.apk -L -o "$FILE"/"$FILE".apk
#	echo "" > "$FILE"/"$VERSION_CODE"
#fi

#FILE=Weixin
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://dldir1.qq.com/weixin/android/weixin8024android2180_arm64.apk -L -o "$FILE"/"$FILE".apk
#	echo "" > "$FILE"/"$VERSION_CODE"
#fi

#FILE=QQ
#if [[ ! -f "$FILE"/"$FILE".apk ]]; then
#	curl https://downv6.qq.com/qqweb/QQ_1/android_apk/Android_8.8.95.8265_537122601_HB_64.apk -L -o "$FILE"/"$FILE".apk
#	echo "" > "$FILE"/"$VERSION_CODE"
#fi

FILE=QQPim
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl "https://qqwx.qq.com/s?aid=index&p=11&c=102021&vt=1&pf=0" -L -o "$FILE"/"$FILE".apk
	echo "8.0.5.298000" > "$FILE"/"$VERSION_CODE"
fi

FILE=ZeroTierOne
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://download.zerotier.com/dist/ZeroTierOne.apk -o "$FILE"/"$FILE".apk
	echo "1.8.9-1" > "$FILE"/"$VERSION_CODE"
fi

FILE=Davx5
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://github.com/bitfireAT/davx5-ose/releases/download/v4.2.2-ose/davx5-ose-4.2.2-standard-release.apk -L -o "$FILE"/"$FILE".apk
	echo "4.2.2-ose" > "$FILE"/"$VERSION_CODE"
fi

FILE=VLC
if [[ ! -f "$FILE"/"$FILE".apk ]]; then
	curl https://f-droid.org/repo/org.videolan.vlc_13040408.apk -o "$FILE"/"$FILE".apk
	echo "3.4.4" > "$FILE"/"$VERSION_CODE"
fi

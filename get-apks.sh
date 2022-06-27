#!/bin/bash

FILE=GmsCore/GmsCore.apk
if [[ ! -f "$FILE" ]]; then
    curl https://microg.org/fdroid/repo/com.google.android.gms-214816048.apk -L -o "$FILE"
fi

FILE=GsfProxy/GsfProxy.apk
if [[ ! -f "$FILE" ]]; then
    curl https://microg.org/fdroid/repo/com.google.android.gsf-8.apk -o "$FILE"
fi

FILE=FakeStore/FakeStore.apk
if [[ ! -f "$FILE" ]]; then
    curl https://microg.org/fdroid/repo/com.android.vending-22.apk -o "$FILE"
fi

FILE=IchnaeaNlpBackend/IchnaeaNlpBackend.apk
if [[ ! -f "$FILE" ]]; then
    curl https://github.com/microg/IchnaeaNlpBackend/releases/download/v1.5.0/IchnaeaNlpBackend.apk -L -o "$FILE"
fi

FILE=NominatimGeocoderBackend/NominatimGeocoderBackend.apk
if [[ ! -f "$FILE" ]]; then
    curl https://github.com/microg/NominatimGeocoderBackend/releases/download/v1.2.1/NominatimGeocoderBackend.apk -L -o "$FILE"
fi

FILE=FDroid/FDroid.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/F-Droid.apk -o "$FILE"
fi

FILE=FDroidPrivilegedExtension/FDroidPrivilegedExtension.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/org.fdroid.fdroid.privileged_2130.apk -o "$FILE"
fi

FILE=UnifiedNlp/UnifiedNlp.apk
if [[ ! -f "$FILE" ]]; then
    curl https://github.com/microg/UnifiedNlp/releases/download/v1.6.8/UnifiedNlp.apk -L -o "$FILE"
fi

FILE=DroidGuard/DroidGuard.apk
if [[ ! -f "$FILE" ]]; then
    curl https://microg.org/fdroid/repo/org.microg.gms.droidguard-14.apk -o "$FILE"
fi

FILE=AuroraServices/AuroraServices.apk
if [[ ! -f "$FILE" ]]; then
    curl https://gitlab.com/AuroraOSS/AuroraServices/uploads/c22e95975571e9db143567690777a56e/AuroraServices_v1.1.1.apk -o "$FILE"
fi

FILE=AuroraDroid/AuroraDroid.apk
if [[ ! -f "$FILE" ]]; then
    curl https://gitlab.com/AuroraOSS/auroradroid/uploads/d925b3b4c054df7535b93895c199159f/AuroraDroid_1.0.8.apk -o "$FILE"
fi

FILE=AuroraStore/AuroraStore.apk
if [[ ! -f "$FILE" ]]; then
    curl https://gitlab.com/AuroraOSS/AuroraStore/uploads/bbc1bd5a77ab2b40bbf288ccbef8d1f0/AuroraStore_4.1.1.apk -o "$FILE"
fi

FILE=TrichromeLibrary/TrichromeLibrary.apk
if [[ ! -f "$FILE" ]]; then
    curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3618509 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"
fi

FILE=BromiteSystemWebView/BromiteSystemWebView.apk
if [[ ! -f "$FILE" ]]; then
    curl https://github.com/bromite/bromite/releases/download/102.0.5005.96/arm64_SystemWebView.apk -L -o "$FILE"
fi

FILE=FingerAds/FingerAds.apk
if [[ ! -f "$FILE" ]]; then
  cp FingerAds/FingerAds.apk.zip FingerAds/FingerAds.apk
fi

FILE=TraccarClient/TraccarClient.apk
if [[ ! -f "$FILE" ]]; then
    curl https://github.com/traccar/traccar-client-android/releases/download/v6.17/app-hidden-release.apk -L -o "$FILE"
fi

FILE=BaiduInput/BaiduInput.apk
if [[ ! -f "$FILE" ]]; then
    curl "https://srf.baidu.com/?c=j&e=d&from=1000e&platform=android&ref=index_entrance_android_click" -L -o "$FILE"
fi

FILE=Bitwarden/Bitwarden.apk
if [[ ! -f "$FILE" ]]; then
    curl https://github.com/bitwarden/mobile/releases/download/v2022.05.0/com.x8bit.bitwarden.apk -L -o "$FILE"
fi

FILE=Estrongs/Estrongs.apk
if [[ ! -f "$FILE" ]]; then
    curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3238334 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"
fi

FILE=FirefoxBeta/FirefoxBeta.apk
if [[ ! -f "$FILE" ]]; then
    curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3600956 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"
fi

FILE=OpenCamera/OpenCamera.apk
if [[ ! -f "$FILE" ]]; then
    curl https://sourceforge.net/projects/opencamera/files/v_1_50_1/OpenCamera.apk/download -L -o "$FILE"
fi

FILE=GhostCommander/GhostCommander.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/com.ghostsq.commander_433.apk -o "$FILE"
fi

FILE=GhostCommanderSMB/GhostCommanderSMB.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/com.ghostsq.commander.smb_10.apk -o "$FILE"
fi

FILE=GhostCommanderWebDAV/GhostCommanderWebDAV.apk
if [[ ! -f "$FILE" ]]; then
    curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=2875434 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"
fi

FILE=HMSCore/HMSCore.apk
if [[ ! -f "$FILE" ]]; then
    curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=3566138 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"
fi

FILE=Lawnchair/Lawnchair.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/ch.deletescape.lawnchair.plah_2001.apk -o "$FILE"
fi

FILE=QKSMS/QKSMS.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/com.moez.QKSMS_2218.apk -o "$FILE"
fi

FILE=OsmAndPlus/OsmAndPlus.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/net.osmand.plus_421.apk -o "$FILE"
fi

FILE=ScreenshotTile/ScreenshotTile.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/com.github.cvzi.screenshottile_68.apk -o "$FILE"
fi

FILE=SimpleGalleryPro/SimpleGalleryPro.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/com.simplemobiletools.gallery.pro_370.apk -o "$FILE"
fi

FILE=Snapseed/Snapseed.apk
if [[ ! -f "$FILE" ]]; then
    curl https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=992746 -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o "$FILE"
fi

FILE=Wandoujia/Wandoujia.apk
if [[ ! -f "$FILE" ]]; then
    curl https://ucan.25pp.com/Wandoujia_wandoujia_sem_default.apk -L -o "$FILE"
fi

FILE=LibreraReader/LibreraReader.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/com.foobnix.pro.pdf.reader_4390.apk -o "$FILE"
fi

FILE=KOReader/KOReader.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/org.koreader.launcher.fdroid_9084.apk -o "$FILE"
fi

FILE=GeometricWeather/GeometricWeather.apk
if [[ ! -f "$FILE" ]]; then
    curl https://f-droid.org/repo/wangdaye.com.geometricweather_30102.apk -o "$FILE"
fi

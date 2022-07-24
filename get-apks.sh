#!/bin/bash

if [[ ! -x "$(command -v aapt)" ]]; then
    echo "aapt could not be found"
	echo "try: export PATH=$PATH:/mnt/bu2/ubuntu/android/lineage/out/soong/host/linux-x86/bin"
	echo "Ctrl+C to stop or wait 120s"
    sleep 120
	return 1
fi

if [[ ! -x "$(command -v xidel)" ]]; then
    echo "xidel could not be found"
	echo "Ctrl+C to stop or wait 120s"
    sleep 120
	return 1
fi

#input parameter 1:
APK_PAGE=""
# function output result:
APKMIRROR_LINK_FUNC_RESULT=""
# get download link from package page
FUNC_APKMIRROR_LINK(){
	download_page_sub=$(curl $APK_PAGE -A "Mozilla/5.0 ( ; ; rv: ) / / " | xidel - --xpath '//*[@id="file"]//a[@rel="nofollow"]/@href')
	download_page="https://www.apkmirror.com"$download_page_sub
	apk_link_sub=$(curl $download_page -A "Mozilla/5.0 ( ; ; rv: ) / / " | xidel - --xpath '//*[@id="content"]//a[@rel="nofollow"]/@href')
	APKMIRROR_LINK_FUNC_RESULT="https://www.apkmirror.com"$apk_link_sub
}


#input parameter 1:
FILE=""
#input parameter 2:
VERSION=""
#input parameter 3:
TITLE=""
# function output result:
CHECK_FILE_FUNC_RESULT=false
# check apk file exist or not
FUNC_CHECK_FILE(){
	if [[ -f $FILE ]]; then
		file_version=$(aapt dump badging $FILE | grep "versionName" | sed -e "s/.*versionName='//" -e "s/' .*//")

		if [[ "$file_version" == "$VERSION" ]]; then
			CHECK_FILE_FUNC_RESULT=true
			echo "$TITLE:exist"
		fi
	fi
}


VERSION_CODE=.version_code


#:
PACKAGE=IchnaeaNlpBackend

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.5.0"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/microg/IchnaeaNlpBackend/releases/download/v1.5.0/IchnaeaNlpBackend.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=NominatimGeocoderBackend

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.2.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/microg/NominatimGeocoderBackend/releases/download/v1.2.1/NominatimGeocoderBackend.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=UnifiedNlp

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.6.8'"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/microg/UnifiedNlp/releases/download/v1.6.8/UnifiedNlp.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=FDroidPrivilegedExtension

FILE=$PACKAGE/$PACKAGE.apk
VERSION="0.2.13"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	FDROID_APK="https://f-droid.org/repo/org.fdroid.fdroid.privileged_2130.apk"
	curl $FDROID_APK -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=FDroid

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.15.2"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	FDROID_APK="https://f-droid.org/repo/org.fdroid.fdroid_1015052.apk"
	curl $FDROID_APK -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=AuroraServices

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.1.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITLAB_RELEASE="https://gitlab.com/AuroraOSS/AuroraServices/uploads/c22e95975571e9db143567690777a56e/AuroraServices_v1.1.1.apk"
	curl $GITLAB_RELEASE -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=AuroraDroid

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.0.8"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

PACKAGE=AuroraDroid
if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITLAB_RELEASE="https://gitlab.com/AuroraOSS/auroradroid/uploads/d925b3b4c054df7535b93895c199159f/AuroraDroid_1.0.8.apk"
	curl $GITLAB_RELEASE -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=AuroraStore

FILE=$PACKAGE/$PACKAGE.apk
VERSION="4.1.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITLAB_RELEASE="https://gitlab.com/AuroraOSS/AuroraStore/uploads/bbc1bd5a77ab2b40bbf288ccbef8d1f0/AuroraStore_4.1.1.apk"
	curl $GITLAB_RELEASE -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=HeyTap

FILE=$PACKAGE/$PACKAGE.apk
VERSION="9.5.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	HEYTAP_APK="https://storedl1.nearme.com.cn/apk/202206/17/a411e032b465b95c67f42d738d75e1ac.apk"
	curl $HEYTAP_APK -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#com.google.android.trichromelibrary:
PACKAGE=TrichromeLibrary

FILE=$PACKAGE/$PACKAGE.apk
VERSION="103.0.5060.129"
TITLE="$PACKAGE-version:$VERSION (arm64-v8a + arm-v7a)"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/google-inc/trichrome-library/trichrome-library-103-0-5060-129-release/trichrome-library-103-0-5060-129-4-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=SetEdit

FILE=$PACKAGE/$PACKAGE.apk
VERSION="2.2"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/MuntashirAkon/SetEdit/releases/download/v2.2/SetEdit_v2.2.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=FingerAds

FILE=$PACKAGE/$PACKAGE.apk
VERSION="3.3.55"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	cp $FILE.zip $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:copied"
fi


#:
PACKAGE=TraccarClient

FILE=$PACKAGE/$PACKAGE.apk
VERSION="6.17"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/traccar/traccar-client-android/releases/download/v6.17/app-regular-release.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=ZeroTierOne

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.8.6-1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	ZEROTIER_APK="https://download.zerotier.com/dist/ZeroTierOne.apk"
	curl $ZEROTIER_APK -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=WireGuard

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.0.20220516"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/wireguard-development-team/wireguard/wireguard-1-0-20220516-release/wireguard-1-0-20220516-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=Davx5

FILE=$PACKAGE/$PACKAGE.apk
VERSION="4.2.2-ose"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/bitfireAT/davx5-ose/releases/download/v4.2.2-ose/davx5-ose-4.2.2-standard-release.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=NextCloud

FILE=$PACKAGE/$PACKAGE.apk
VERSION="3.20.3"
TITLE="$PACKAGE-version:$VERSION (nodpi) (Android 6.0+)"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/nextcloud/nextcloud/nextcloud-3-20-3-release/nextcloud-3-20-3-2-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=VLC

FILE=$PACKAGE/$PACKAGE.apk
VERSION="3.5.0"
TITLE="$PACKAGE-version:$VERSION (arm64-v8a) (Android 4.2+)"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/videolabs/vlc/vlc-3-5-0-release/vlc-for-android-3-5-0-3-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=Bitwarden

FILE=$PACKAGE/$PACKAGE.apk
VERSION="2022.6.2"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/bitwarden/mobile/releases/download/v2022.6.2/com.x8bit.bitwarden.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=GoogleAuthenticator

FILE=$PACKAGE/$PACKAGE.apk
VERSION="5.20R4"
TITLE="$PACKAGE-version:$VERSION (Android 4.4+)"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/google-inc/authenticator/authenticator-5-20r4-release/google-authenticator-5-20r4-2-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=FirefoxBeta

FILE=$PACKAGE/$PACKAGE.apk
VERSION="103.0.0-beta.5"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

PACKAGE=FirefoxBeta
if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/mozilla-mobile/fenix/releases/download/v103.0.0-beta.5/fenix-103.0.0-beta.5-arm64-v8a.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=OpenCamera

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.50.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	SOURCEFORGE_APK=""https://sourceforge.net/projects/opencamera/PACKAGEs/v_1_50_1/OpenCamera.apk/download""
	curl $SOURCEFORGE_APK -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=GhostCommander

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.60.7"
TITLE="$PACKAGE-version:$VERSION (Android 4.4+)"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/ghost-squared/ghost-commander-file-manager/ghost-commander-file-manager-1-60-7-release/ghost-commander-file-manager-1-60-7-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=GhostCommanderSMB

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.02"
TITLE="$PACKAGE-version: (new) $VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/ghost-squared/smb-plugin-for-ghost-commander-new/smb-plugin-for-ghost-commander-new-1-02-release/smb-plugin-for-ghost-commander-new-1-02-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=GhostCommanderWebDAV

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.0.4"
TITLE="$PACKAGE-version:$VERSION (Android 4.4+)"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/ghost-squared/webdav-for-ghost-commander/webdav-for-ghost-commander-1-0-4-release/webdav-for-ghost-commander-1-0-4-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=Lawnchair

FILE=$PACKAGE/$PACKAGE.apk
VERSION="12.1.0 Alpha 3"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/LawnchairLauncher/lawnchair/releases/download/v12.1.0-alpha.3/Lawnchair.12.1.0.Alpha.3.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=RotationControl

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.0"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	APK_PAGE="https://www.apkmirror.com/apk/crapemyrtle/rotation-control/rotation-control-1-0-release/rotation-control-1-0-android-apk-download/"
	FUNC_APKMIRROR_LINK
	curl $APKMIRROR_LINK_FUNC_RESULT -A "Mozilla/5.0 ( ; ; rv: ) / / " -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=QKSMS

FILE=$PACKAGE/$PACKAGE.apk
VERSION="3.9.4"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/moezbhatti/qksms/releases/download/v3.9.4/QKSMS-v3.9.4.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=OsmAndPlus

FILE=$PACKAGE/$PACKAGE.apk
VERSION="4.2.6"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	FDROID_APK="https://f-droid.org/repo/net.osmand.plus_4206.apk"
	curl $FDROID_APK -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=ScreenshotTile

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.18.0"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/cvzi/ScreenshotTile/releases/download/v1.18.0/com.github.cvzi.screenshottile_69.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=SimpleGalleryPro

FILE=$PACKAGE/$PACKAGE.apk
VERSION="6.23.13"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/SimpleMobileTools/Simple-Gallery/releases/download/6.23.13/gallery-372-foss-release.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi

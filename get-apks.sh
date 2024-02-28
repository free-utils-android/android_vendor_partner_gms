#!/bin/bash

if [[ ! -x "$(command -v aapt2)" ]]; then
    echo "aapt2 could not be found"
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

USER_AGENT="Mozilla/5.0 (  ; ; ; rv:) / /"

# input parameter 1:
APK_PAGE=""
# function output result:
APKMIRROR_LINK_FUNC_RESULT=""
# get download link from package page
function FUNC_APKMIRROR_LINK(){
	download_page_sub=$(curl $APK_PAGE -A "$USER_AGENT" | xidel - --xpath '//*[@id="file"]//a[@rel="nofollow"]/@href')
	sleep 10
	download_page="https://www.apkmirror.com"$download_page_sub
	apk_link_sub=$(curl $download_page -A "$USER_AGENT" | xidel - --xpath '//*[@id="content"]//a[@rel="nofollow"]/@href')
	sleep 10
	APKMIRROR_LINK_FUNC_RESULT="https://www.apkmirror.com"$apk_link_sub
}


# input parameter 1:
FILE=""
# input parameter 2:
VERSION=""
# input parameter 3:
TITLE=""
# function output result:
CHECK_FILE_FUNC_RESULT=false
# check apk file exist or not
function FUNC_CHECK_FILE(){
	if [[ -f $FILE ]]; then
		file_version=$(aapt2 dump badging $FILE | grep "versionName" | sed -e "s/.*versionName='//" -e "s/' .*//")

		if [[ "$file_version" == "$VERSION" ]]; then
			CHECK_FILE_FUNC_RESULT=true
			echo "$TITLE:exist"
		fi
	fi
}


# input parameter 1:
#CHECK_FILE_FUNC_RESULT=false
# input parameter 2:
#APK_PAGE=""
# input parameter 3:
#FILE=""
# function output result:
# null,file_package
# download package
function FUNC_APKMIRROR_DOWNLOAD(){
	if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
		FUNC_APKMIRROR_LINK
		curl $APKMIRROR_LINK_FUNC_RESULT -A "$USER_AGENT" -L -o $FILE
		sleep 30
		echo "$TITLE:got"
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
VERSION="1.6.8"
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
VERSION="1.19.0"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	FDROID_APK="https://f-droid.org/repo/org.fdroid.fdroid_1019050.apk"
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
VERSION="4.4.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITLAB_RELEASE="https://auroraoss.com/AuroraStore/Stable/AuroraStore_4.4.1.apk"
	curl $GITLAB_RELEASE -A "Mozilla/5.0 ( ; ; rv: ) / / " -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=HeyTap

FILE=$PACKAGE/$PACKAGE.apk
VERSION="11.8.2"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	HEYTAP_APK="https://storedl1.nearme.com.cn/apk/202402/05/08310efe74566d5eec7c2dec219804a7.apk"
	curl $HEYTAP_APK -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#com.google.android.trichromelibrary:
PACKAGE=TrichromeLibrary

VERSION="122.0.6261.43"
TITLE="$PACKAGE-version:$VERSION (arm64-v8a + arm-v7a)"
APK_PAGE="https://www.apkmirror.com/apk/google-inc/trichrome-library/trichrome-library-122-0-6261-43-release/trichrome-library-122-0-6261-43-android-apk-download/"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE
FUNC_APKMIRROR_DOWNLOAD


#:
PACKAGE=SetEdit

FILE=$PACKAGE/$PACKAGE.apk
VERSION="2.3"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/MuntashirAkon/SetEdit/releases/download/v2.3/SetEdit_v2.3.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=FingerAds

FILE=$PACKAGE/$PACKAGE.apk
VERSION="3.4.5"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/jdlingyu/onefinger/releases/download/v3.4.7.0/finger-ads-v3.4.5.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:copied"
fi


#:
PACKAGE=TraccarClient

FILE=$PACKAGE/$PACKAGE.apk
VERSION="7.2"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/traccar/traccar-client-android/releases/download/v7.2/app-regular-release.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=ZeroTierOne

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.12.0-3"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	ZEROTIER_APK="https://download.zerotier.com/dist/ZeroTierOne.apk"
	curl $ZEROTIER_APK -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#PACKAGE=WireGuard


#:
PACKAGE=AnyConnect

VERSION="5.0.05042"
TITLE="$PACKAGE-version:$VERSION"
APK_PAGE="https://www.apkmirror.com/apk/cisco-systems-inc/anyconnect/anyconnect-5-0-05042-release/cisco-secure-client-anyconnect-5-0-05042-android-apk-download/"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE
FUNC_APKMIRROR_DOWNLOAD


#:
PACKAGE=Davx5

FILE=$PACKAGE/$PACKAGE.apk
VERSION="4.3.13-ose"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/bitfireAT/davx5-ose/releases/download/v4.3.13-ose/davx5-ose-4.3.13-ose-release.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=NextCloud

FILE=$PACKAGE/$PACKAGE.apk
VERSION="3.27.0"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/nextcloud/android/releases/download/stable-3.27.0/nextcloud-30270090.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=VLC

VERSION="3.5.4"
TITLE="$PACKAGE-version:$VERSION (arm64-v8a) (Android 4.2+)"
APK_PAGE="https://www.apkmirror.com/apk/videolabs/vlc/vlc-3-5-4-release/vlc-for-android-3-5-4-2-android-apk-download/"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE
FUNC_APKMIRROR_DOWNLOAD


#:
PACKAGE=Bitwarden

FILE=$PACKAGE/$PACKAGE.apk
VERSION="2024.2.0"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/bitwarden/mobile/releases/download/v2024.2.0/com.x8bit.bitwarden.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=GoogleAuthenticator

VERSION="6.0"
TITLE="$PACKAGE-version:$VERSION (Android 4.4+)"
APK_PAGE="https://www.apkmirror.com/apk/google-inc/authenticator/authenticator-6-0-release/google-authenticator-6-0-3-android-apk-download/"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE
FUNC_APKMIRROR_DOWNLOAD


#:
PACKAGE=FirefoxBeta

FILE=$PACKAGE/$PACKAGE.apk
VERSION="124.0b4"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

PACKAGE=FirefoxBeta
if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/mozilla-mobile/firefox-android/releases/download/fenix-v124.0b4/fenix-124.0b4-arm64-v8a.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=OpenCamera

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.52"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	SOURCEFORGE_APK=""https://sourceforge.net/projects/opencamera/files/v_1_52/OpenCamera.apk/download""
	curl $SOURCEFORGE_APK -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=GhostCommander

VERSION="1.62.3"
TITLE="$PACKAGE-version:$VERSION (Android 4.4+)"
APK_PAGE="https://www.apkmirror.com/apk/ghost-squared/ghost-commander-file-manager/ghost-commander-file-manager-1-62-3-release/ghost-commander-file-manager-1-62-3-android-apk-download/"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE
FUNC_APKMIRROR_DOWNLOAD


#:
PACKAGE=GhostCommanderSMB

VERSION="1.02"
TITLE="$PACKAGE-version: (new) $VERSION"
APK_PAGE="https://www.apkmirror.com/apk/ghost-squared/smb-plugin-for-ghost-commander-new/smb-plugin-for-ghost-commander-new-1-02-release/smb-plugin-for-ghost-commander-new-1-02-android-apk-download/"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE
FUNC_APKMIRROR_DOWNLOAD


#:
PACKAGE=GhostCommanderWebDAV

VERSION="1.0.4"
TITLE="$PACKAGE-version:$VERSION (Android 4.4+)"
APK_PAGE="https://www.apkmirror.com/apk/ghost-squared/webdav-for-ghost-commander/webdav-for-ghost-commander-1-0-4-release/webdav-for-ghost-commander-1-0-4-android-apk-download/"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE
FUNC_APKMIRROR_DOWNLOAD


#PACKAGE=Lawnchair


#：
PACKAGE=RotationControl

VERSION="1.1"
TITLE="$PACKAGE-version:$VERSION"
APK_PAGE="https://www.apkmirror.com/apk/crapemyrtle/rotation-control/rotation-control-1-1-release/rotation-control-1-1-android-apk-download/"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE
FUNC_APKMIRROR_DOWNLOAD


#:
PACKAGE=FossifySMS

FILE=$PACKAGE/$PACKAGE.apk
VERSION="1.0.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/FossifyOrg/Messages/releases/download/1.0.1/messages-2-foss-release.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=OsmAndPlus

FILE=$PACKAGE/$PACKAGE.apk
VERSION="4.6.12"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	FDROID_APK="https://f-droid.org/repo/net.osmand.plus_461203.apk"
	curl $FDROID_APK -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=ScreenshotTile

FILE=$PACKAGE/$PACKAGE.apk
VERSION="2.8.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/cvzi/ScreenshotTile/releases/download/v2.8.1/com.github.cvzi.screenshottile_114.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=SimpleGalleryPro

FILE=$PACKAGE/$PACKAGE.apk
VERSION="6.28.1"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	GITHUB_RELEASE="https://github.com/SimpleMobileTools/Simple-Gallery/releases/download/6.28.1/gallery-396-foss-release.apk"
	curl $GITHUB_RELEASE -L -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi


#:
PACKAGE=Xunfei

FILE=$PACKAGE/$PACKAGE.apk
VERSION="13.0.7"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	VENDOR_RELEASE="https://download.voicecloud.cn/100IME/01010026/iFlyIME_v13.0.7.15091.apk"
	curl $VENDOR_RELEASE -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE
	echo "$TITLE:got"
fi

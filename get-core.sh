#!/bin/bash

if [[ ! -x "$(command -v aapt2)" ]]; then
    echo "aapt2 could not be found"
	echo "try: export PATH=$PATH:/mnt/bu2/ubuntu/android/lineage/out/host/linux-x86/bin/"
	echo "Ctrl+C to stop or wait 120s"
    sleep 120
	return 1
fi

if [[ ! -x "$(command -v jq)" ]]; then
    echo "jq could not be found"
	echo "Ctrl+C to stop or wait 120s"
    sleep 120
	return 1
fi

USER_AGENT="Mozilla/5.0 (  ; ; ; rv:) / /"


# "https://store.oppomobile.com/" //*[@id="market"]
# The page uses jequery to update url elements
# function output result:
OPPOMOBILE_LINK_FUNC_RESULT=""
# get download link from package page
function FUNC_OPPOMOBILE_LINK(){
	OPPOMOBILE_LINK_FUNC_RESULT=$(curl 'https://www.heytapmobi.com/cdoweb/download/url' -H 'content-type: application/json;charset=UTF-8' --data-raw '["com.heytap.market"]' | jq -r '.[0].link')
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




VERSION_CODE=.version_code



#:
PACKAGE=FDroidPrivilegedExtension

VERSION="0.2.13"
TITLE="$PACKAGE-version:$VERSION"

FILE=$PACKAGE/$PACKAGE.apk
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	FDROID_APK="https://f-droid.org/repo/org.fdroid.fdroid.privileged_2130.apk"
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
PACKAGE=HeyTap

FILE=$PACKAGE/$PACKAGE.apk
VERSION="26.7.0_CN"
TITLE="$PACKAGE-version:$VERSION"
CHECK_FILE_FUNC_RESULT=false
FUNC_CHECK_FILE

if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
	FUNC_OPPOMOBILE_LINK
	curl $OPPOMOBILE_LINK_FUNC_RESULT -o $FILE
	echo $VERSION > $PACKAGE/$VERSION_CODE

	FUNC_CHECK_FILE
	if [[ $CHECK_FILE_FUNC_RESULT == false ]]; then
		echo "new got $VERSION"
	else
		echo "$TITLE:got"
	fi
fi

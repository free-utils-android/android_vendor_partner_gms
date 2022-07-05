LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := TencentMyApp
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OPTIONAL_USES_LIBRARIES := org.apache.http.legacy com.sec.android.app.multiwindow com.google.android.maps com.here.android
LOCAL_PRODUCT_MODULE := true
include $(BUILD_PREBUILT)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_STATIC_JAVA_LIBRARIES := xutils android-support-v4
LOCAL_MODULE_TAGS := optional
#LOCAL_JAVA_LIBRARIES :=
LOCAL_SRC_FILES := $(call all-java-files-under, $(src))
#LOCAL_JNI_SHARED_LIBRARIES :=
LOCAL_PACKAGE_NAME := SampleXutils
#LOCAL_CERTIFICATE := platform
#LOCAL_PRIVILEGED_MODULE := true
LOCAL_PROGUARD_ENABLED := disabled
include $(BUILD_PACKAGE)
#LOCAL_PROGUARD_FLAG_FILES := proguard.flags
####################################
include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := xutils:libs/xUtils.jar \
                         android-support-v4:libs/android-support-v4.jar
include $(BUILD_MULTI_PREBUILT)


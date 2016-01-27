LOCAL_PATH := $(call my-dir)

# 3rd party shared library, it's already built
# Note this part seems OK, LOCAL_PATH is at jni folder under app\src\main folder
# when we run the command from app\src\main folder
# You should have ndk-build.cmd in $PATH, so you can build through Android Studio
# not only by manually run command line: ndk-build.cmd
# The preparation is only to copy the library to app\libs\armeabi
include $(CLEAR_VARS)
LOCAL_MODULE    := SimpleLib
LOCAL_SRC_FILES := ../../../libs/$(TARGET_ARCH_ABI)/libSimpleLib.so
include ${PREBUILT_SHARED_LIBRARY}


#LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES    := SimpleLib
LOCAL_MODULE    := MathLib
LOCAL_SRC_FILES := Main.c
include $(BUILD_SHARED_LIBRARY)

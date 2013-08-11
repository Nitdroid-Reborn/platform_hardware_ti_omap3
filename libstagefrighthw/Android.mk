LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    TIOMXPlugin.cpp

LOCAL_CFLAGS := $(PV_CFLAGS_MINUS_VISIBILITY)

LOCAL_C_INCLUDES:= \
        frameworks/native/include \
        frameworks/native/include/media/hardware \
        frameworks/av/include \
        $(LOCAL_PATH)/../omx/system/src/openmax_il/omx_core/inc

LOCAL_SHARED_LIBRARIES :=       \
        libbinder               \
        libutils                \
        libcutils               \
        libui                   \
        libdl                   \
        libstagefright_foundation

LOCAL_MODULE := libstagefrighthw

include $(BUILD_SHARED_LIBRARY)


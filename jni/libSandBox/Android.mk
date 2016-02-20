LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_LDLIBS 	:= -llog -fPIC
LOCAL_MODULE    := SandBox
LOCAL_SRC_FILES := SandBox.cpp \
	ptraceaux.c
	
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../inc \
	$(LOCAL_PATH)/../libCommonUtils
	
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)\
	SandBox.h \
	ptraceaux.h 

LOCAL_STATIC_LIBRARIES := \
	libCommonUtils
	
include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_EXECUTABLE)

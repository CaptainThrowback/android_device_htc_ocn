LOCAL_PATH := $(call my-dir)

# libsqlite.so (stub)
include $(CLEAR_VARS)
LOCAL_MODULE:= libsqlite
LOCAL_MODULE_TAGS := optional eng
LOCAL_SRC_FILES := sqlite3_stub.c
LOCAL_CFLAGS := -Wno-unused-parameter
include $(BUILD_SHARED_LIBRARY)

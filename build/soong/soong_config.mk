$(call add_json_map, Potato)

$(call add_json_bool, Device_support_hwfde, $(filter true,$(TARGET_HW_DISK_ENCRYPTION)))
$(call add_json_bool, Device_support_hwfde_perf, $(filter true,$(TARGET_HW_DISK_ENCRYPTION_PERF)))
$(call add_json_bool, Device_support_legacy_hwfde, $(filter true,$(TARGET_LEGACY_HW_DISK_ENCRYPTION)))
$(call add_json_bool, Device_support_wait_for_qsee, $(filter true,$(TARGET_KEYMASTER_WAIT_FOR_QSEE)))
$(call add_json_str, Java_Source_Overlays, $(JAVA_SOURCE_OVERLAYS))
$(call add_json_bool, Needs_text_relocations, $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)))
$(call add_json_str_omitempty, Target_init_vendor_lib, $(TARGET_INIT_VENDOR_LIB))
$(call add_json_str, Specific_camera_parameter_library, $(TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY))
$(call add_json_str_omitempty, Target_process_sdk_version_override, $(TARGET_PROCESS_SDK_VERSION_OVERRIDE))
$(call add_json_str, Target_shim_libs, $(TARGET_LD_SHIM_LIBS))
$(call add_json_bool, Uses_generic_camera_parameter_library, $(if $(TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY),false,true))
$(call add_json_bool, Uses_qcom_bsp_legacy, $(filter true,$(TARGET_USES_QCOM_BSP_LEGACY)))

$(call end_json_map)

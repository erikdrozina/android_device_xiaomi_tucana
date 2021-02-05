# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptive-aac-ldac \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.enable.twsplus=true \
    persist.vendor.btstack.connect.peer_earbud=true \
    persist.vendor.btstack.enable.twsplussho=true \
    persist.vendor.bt.a2dp.mac_whitelist=false \
    persist.vendor.btsatck.absvolfeature=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.sat.fallback.dist=40 \
    persist.camera.sat.fallback.dist.d=10 \
    persist.camera.sat.fallback.luxindex=330 \
    persist.camera.sat.fallback.lux.d=50 \
    persist.vendor.camera.enableNCSService=TRUE \
    persist.vendor.camera.enableTOFInterface=TRUE \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,org.lineageos.snap

# System property determining camera HAL to be used for a Video call
# 1 is camera1
# 2 or anything else is camera2
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.VT_CAM_INTERFACE=1

# CNE and DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1 \
    persist.vendor.dpm.feature=11 \
    persist.vendor.dpm.loglevel=0 \
    persist.vendor.dpm.nsrm.bkg.evt=3955

# DALVIK
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=36m \
    dev.pm.dyn_samplingrate=1
    
# Data storage improvement
PRODUCT_PROPERTY_OVERRIDES += \
    sys.use_fifo_ui=1

# Data Modules
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.mode=concurrent \
    ro.vendor.use_data_netmgrd=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.eyecare.brightness.threshold=11 \
    ro.eyecare.brightness.level=5 \
    ro.displayfeature.histogram.enable=true \
    ro.hist.brightness.threshold=7 \
    ro.sf.lcd_density=440 \
    ro.vendor.display.ad=1 \
    ro.vendor.display.ad.hdr_calib_data=/vendor/etc/hdr_config.cfg \
    ro.vendor.display.ad.sdr_calib_data=/vendor/etc/sdr_config.cfg \
    ro.vendor.display.sensortype=2 \
    ro.xiaomi.bl.poll=true \
    persist.displayfeature.dc_backlight.threshold=610 \
    persist.displayfeature.dc_backlight.enable=false \
    persist.fod.modified.dc_status=true \
    sys.displayfeature.hbm.enable=true


# FP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fingerprint.cleanup.unused=false

# Gboard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.kb_pad_port_b=1

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.cpurend.vsync=false

# IOP
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.iop.enable_prefetch_ofr=0 \
    vendor.iop.enable_uxe=0

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml \
    vendor.mm.enable.qcom_parser=67108863

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q6150-17263-1

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.force_ltd_sys_ind=1 \
    persist.vendor.radio.manual_nw_rej_ct=1 \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.procedure_bytes=SKIP \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.redir_party_num=1 \
    persist.vendor.radio.sib16_support=1 \
    ro.telephony.default_cdma_sub=0 \
    ro.telephony.default_network=22,22 
    
# RCS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rcs.supported=1

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sensors.enable.mag_filter=true

# Subsystem ramdump
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

# USB debugging
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

# Use Vulkan backend for Skia UI rendering
PRODUCT_PRODUCT_PROPERTIES += \
    debug.hwui.renderer=skiavk

# Vendor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1
    
# WLAN for Android Q version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.wlan.vendor=qcom \
    ro.hardware.wlan.chip=39xx \
    ro.hardware.wlan.mimo=1 
    
# Zygote
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true

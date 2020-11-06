package com.pedrolemoz.device_model

import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val channel = "com.pedrolemoz.device_model"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel).setMethodCallHandler { call, result ->
            if (call.method == "getDeviceInformation") {
                var deviceInformation = getDeviceInformation()
                result.success(deviceInformation)
            } else {
                result.notImplemented()
            }

        }
    }

    private fun getDeviceInformation(): List<String> {
        return listOf(Build.DEVICE, Build.BRAND, Build.MODEL, Build.MANUFACTURER, Build.HARDWARE, Build.DISPLAY, Build.HOST)
    }

}

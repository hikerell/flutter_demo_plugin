package com.example.flutter_demo_plugin

import android.util.Log
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import com.example.flutter_demo_plugin.PlatformVPNPlugin

class MainActivity : FlutterActivity() {
   override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
    super.configureFlutterEngine(flutterEngine)
    flutterEngine.plugins.add(PlatformVPNPlugin())
   }
}

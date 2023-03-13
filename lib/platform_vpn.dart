import 'package:flutter/services.dart';

const channel = MethodChannel('com.example.flutter_demo/vpn');

class PlatformVPN {
  Future<void> showToast() async {
    final int callToast =
        await channel.invokeMethod('showToast', <String, String>{
      'message':
          'This is a Toast from From Flutter to Android Native Code Yes, It is working'
    });
    print(callToast);
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'platform_interface.dart';

/// An implementation of [FlutterDemoTemplatePluginPlatform] that uses method channels.
class MethodChannelFlutterDemoTemplatePlugin
    extends FlutterDemoTemplatePluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_demo_template_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

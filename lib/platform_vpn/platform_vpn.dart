import 'platform_interface.dart';

class PlatformVPN {
  Future<String?> getPlatformVersion() {
    return FlutterDemoTemplatePluginPlatform.instance.getPlatformVersion();
  }
}

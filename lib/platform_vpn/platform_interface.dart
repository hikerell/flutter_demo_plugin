import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel.dart';

abstract class FlutterDemoTemplatePluginPlatform extends PlatformInterface {
  /// Constructs a FlutterDemoTemplatePluginPlatform.
  FlutterDemoTemplatePluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterDemoTemplatePluginPlatform _instance =
      MethodChannelFlutterDemoTemplatePlugin();

  /// The default instance of [FlutterDemoTemplatePluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterDemoTemplatePlugin].
  static FlutterDemoTemplatePluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterDemoTemplatePluginPlatform] when
  /// they register themselves.
  static set instance(FlutterDemoTemplatePluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

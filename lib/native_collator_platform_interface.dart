import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_collator_method_channel.dart';

abstract class NativeCollatorPlatform extends PlatformInterface {
  /// Constructs a NativeCollatorPlatform.
  NativeCollatorPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeCollatorPlatform _instance = MethodChannelNativeCollator();

  /// The default instance of [NativeCollatorPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeCollator].
  static NativeCollatorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeCollatorPlatform] when
  /// they register themselves.
  static set instance(NativeCollatorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

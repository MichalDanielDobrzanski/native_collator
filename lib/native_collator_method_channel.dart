import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_collator_platform_interface.dart';

/// An implementation of [NativeCollatorPlatform] that uses method channels.
class MethodChannelNativeCollator extends NativeCollatorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_collator');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

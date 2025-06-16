import 'dart:async';
import 'package:flutter/services.dart';

class NativeCollator {
  static const MethodChannel _channel = MethodChannel('native_collator');

  static Future<List<String>> sort(List<String> input, String locale) async {
    final sorted = await _channel.invokeMethod<List<dynamic>>('sortStrings', {
      'input': input,
      'locale': locale,
    });
    return sorted!.cast<String>();
  }
}

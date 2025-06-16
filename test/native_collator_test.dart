import 'package:flutter_test/flutter_test.dart';
import 'package:native_collator/native_collator.dart';
import 'package:native_collator/native_collator_platform_interface.dart';
import 'package:native_collator/native_collator_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeCollatorPlatform
    with MockPlatformInterfaceMixin
    implements NativeCollatorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NativeCollatorPlatform initialPlatform = NativeCollatorPlatform.instance;

  test('$MethodChannelNativeCollator is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeCollator>());
  });

  test('getPlatformVersion', () async {
    NativeCollator nativeCollatorPlugin = NativeCollator();
    MockNativeCollatorPlatform fakePlatform = MockNativeCollatorPlatform();
    NativeCollatorPlatform.instance = fakePlatform;

    expect(await nativeCollatorPlugin.getPlatformVersion(), '42');
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:check_root_jailbreak/check_root_jailbreak.dart';
import 'package:check_root_jailbreak/check_root_jailbreak_platform_interface.dart';
import 'package:check_root_jailbreak/check_root_jailbreak_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCheckRootJailbreakPlatform
    with MockPlatformInterfaceMixin
    implements CheckRootJailbreakPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CheckRootJailbreakPlatform initialPlatform = CheckRootJailbreakPlatform.instance;

  test('$MethodChannelCheckRootJailbreak is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCheckRootJailbreak>());
  });

  test('getPlatformVersion', () async {
    CheckRootJailbreak checkRootJailbreakPlugin = CheckRootJailbreak();
    MockCheckRootJailbreakPlatform fakePlatform = MockCheckRootJailbreakPlatform();
    CheckRootJailbreakPlatform.instance = fakePlatform;

    expect(await checkRootJailbreakPlugin.getPlatformVersion(), '42');
  });
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:check_root_jailbreak/check_root_jailbreak_method_channel.dart';

void main() {
  MethodChannelCheckRootJailbreak platform = MethodChannelCheckRootJailbreak();
  const MethodChannel channel = MethodChannel('check_root_jailbreak');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('check_method_isRootAvailable_correctly', () async {
    expect(await platform.isRootAvailable(), true);
  });
}

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'check_root_jailbreak_method_channel.dart';

abstract class CheckRootJailbreakPlatform extends PlatformInterface {
  /// Constructs a CheckRootJailbreakPlatform.
  CheckRootJailbreakPlatform() : super(token: _token);

  static final Object _token = Object();

  static CheckRootJailbreakPlatform _instance = MethodChannelCheckRootJailbreak();

  /// The default instance of [CheckRootJailbreakPlatform] to use.
  ///
  /// Defaults to [MethodChannelCheckRootJailbreak].
  static CheckRootJailbreakPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CheckRootJailbreakPlatform] when
  /// they register themselves.
  static set instance(CheckRootJailbreakPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> isRootAvailable() {
    throw UnimplementedError('isRootAvailable() has not been implemented.');
  }
}

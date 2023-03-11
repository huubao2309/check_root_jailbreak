import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'check_root_jailbreak_platform_interface.dart';

/// An implementation of [CheckRootJailbreakPlatform] that uses method channels.
class MethodChannelCheckRootJailbreak extends CheckRootJailbreakPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('check_root_jailbreak');

  @override
  Future<bool?> isRootAvailable() async {
    final bool? isRootAvailable = await methodChannel.invokeMethod<bool?>('isRootAvailable');
    return isRootAvailable;
  }
}

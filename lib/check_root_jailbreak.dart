import 'check_root_jailbreak_platform_interface.dart';

class CheckRootJailbreak {
  Future<bool?> isRootAvailable() {
    return CheckRootJailbreakPlatform.instance.isRootAvailable();
  }
}

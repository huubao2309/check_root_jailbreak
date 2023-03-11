#import "CheckRootJailbreakPlugin.h"
#if __has_include(<check_root_jailbreak/check_root_jailbreak-Swift.h>)
#import <check_root_jailbreak/check_root_jailbreak-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "check_root_jailbreak-Swift.h"
#endif

@implementation CheckRootJailbreakPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCheckRootJailbreakPlugin registerWithRegistrar:registrar];
}
@end

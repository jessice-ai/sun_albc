#import "SunAlbcPlugin.h"
#if __has_include(<sun_albc/sun_albc-Swift.h>)
#import <sun_albc/sun_albc-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sun_albc-Swift.h"
#endif

@implementation SunAlbcPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSunAlbcPlugin registerWithRegistrar:registrar];
}
@end

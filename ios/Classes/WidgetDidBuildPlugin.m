#import "WidgetDidBuildPlugin.h"
#import <widget_did_build/widget_did_build-Swift.h>

@implementation WidgetDidBuildPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWidgetDidBuildPlugin registerWithRegistrar:registrar];
}
@end

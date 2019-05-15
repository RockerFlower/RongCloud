#import "RongCloudPlugin.h"
#import <rong_cloud/rong_cloud-Swift.h>

@implementation RongCloudPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRongCloudPlugin registerWithRegistrar:registrar];
}
@end

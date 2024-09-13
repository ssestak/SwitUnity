//
//  NativeCallProxy.h
//  SwiftUnity
//
//  Created by Simon Sestak on 23/08/2024.
//

#import <Foundation/Foundation.h>

@protocol NativeCallsProtocol
@required
- (void) sendMessageToMobileApp:(NSString*)message;
// other methods
@end

__attribute__ ((visibility("default")))
@interface FrameworkLibAPI : NSObject
+(void) registerAPIforNativeCalls:(id<NativeCallsProtocol>) aApi;

@end

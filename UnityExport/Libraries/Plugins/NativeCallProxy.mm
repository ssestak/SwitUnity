//
//  NativeCallProxy.m
//  SwiftUnity
//
//  Created by Simon Sestak on 23/08/2024.
//

#import <Foundation/Foundation.h>
#import "NativeCallProxy.h"

@implementation FrameworkLibAPI

id<NativeCallsProtocol> api = NULL;
+(void) registerAPIforNativeCalls:(id<NativeCallsProtocol>) aApi
{
    api = aApi;
}

@end

extern "C"
{
void sendMessageToMobileApp(const char* message)
{
    return [api sendMessageToMobileApp:[NSString stringWithUTF8String:message]];
}
}

//
//  AppDelegate.m
//  TalkingDataSDKDemo
//
//  Created by liweiqiang on 2017/5/22.
//  Copyright © 2017年 TendCloud. All rights reserved.
//

#import "AppDelegate.h"
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 140000
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#endif
#import "TalkingDataSDK.h"

@interface AppDelegate ()

@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [application setMinimumBackgroundFetchInterval:UIApplicationBackgroundFetchIntervalMinimum];
    
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 140000
    if (@available(iOS 14, *)) {
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            NSLog(@"TalkingData: Application tracking authorization status:%lu", (unsigned long)status);
        }];
    }
#endif
    
    NSString *appId = @"";
    NSString *channelId = @"AppStore";
    [TalkingDataSDK backgroundSessionEnabled];
    [TalkingDataSDK init:appId channelId:channelId custom:@"Demo"];
    
    
    
    
    
    self.locationManager = [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    _locationManager.distanceFilter = 10.0;
    _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [_locationManager requestWhenInUseAuthorization];
    [_locationManager startUpdatingLocation];
    
    return YES;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    NSLog(@"TalkingData: Update location:%@", locations);
}


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
    NSLog(@"TalkingData: openURL:%@", url);
    [TalkingDataSDK onReceiveDeepLink:url];
    if ([TalkingDataSDK handleUrl:url]) {
        return YES;
    }
    
    return YES;
}

@end

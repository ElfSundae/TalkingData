//
//  TDPageViewController.m
//  TalkingDataSDKDemo
//
//  Created by liweiqiang on 2017/5/22.
//  Copyright © 2017年 TendCloud. All rights reserved.
//

#import "TDPageViewController.h"
#import "TalkingDataSDK.h"

@implementation TDPageViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [TalkingDataSDK onPageBegin:@"主页面"];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [TalkingDataSDK onPageEnd:@"主页面"];
}

@end

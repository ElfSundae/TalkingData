//
//  TDPageFirstViewController.m
//  TalkingDataSDKDemo
//
//  Created by liweiqiang on 2017/5/22.
//  Copyright © 2017年 TendCloud. All rights reserved.
//

#import "TDPageFirstViewController.h"
#import "TalkingDataSDK.h"

@implementation TDPageFirstViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [TalkingDataSDK onPageBegin:@"新页面1"];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [TalkingDataSDK onPageEnd:@"新页面1"];
}

@end

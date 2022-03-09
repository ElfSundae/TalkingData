//
//  TDPageSecondViewController.m
//  TalkingDataSDKDemo
//
//  Created by liweiqiang on 2017/5/22.
//  Copyright © 2017年 TendCloud. All rights reserved.
//

#import "TDPageSecondViewController.h"
#import "TalkingDataSDK.h"

@implementation TDPageSecondViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [TalkingDataSDK onPageBegin:@"新页面2"];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [TalkingDataSDK onPageEnd:@"新页面2"];
}

@end

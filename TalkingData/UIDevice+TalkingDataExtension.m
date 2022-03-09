//
//  UIDevice+TalkingDataExtension.m
//  TalkingData
//
//  Created by Elf Sundae on 2020/05/23.
//  Copyright © 2020 https://0x123.com. All rights reserved.
//

#import "UIDevice+TalkingDataExtension.h"
#import "TalkingDataSDK.h"

@implementation UIDevice (TalkingDataExtension)

- (NSString *)talkingDataDeviceIdentifier
{
    return [TalkingDataSDK getDeviceId];
}

@end

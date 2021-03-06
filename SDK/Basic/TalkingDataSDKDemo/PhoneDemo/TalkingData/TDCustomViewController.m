//
//  TDCustomViewController.m
//  TalkingDataSDKDemo
//
//  Created by liweiqiang on 2017/5/22.
//  Copyright © 2017年 TendCloud. All rights reserved.
//

#import "TDCustomViewController.h"
#import "TalkingDataSDK.h"

@interface TDCustomViewController ()

@property (weak, nonatomic) IBOutlet UITextField *eventIDField;
@property (weak, nonatomic) IBOutlet UITextField *eventValueField;
@property (weak, nonatomic) IBOutlet UITextField *key1Field;
@property (weak, nonatomic) IBOutlet UITextField *value1Field;
@property (weak, nonatomic) IBOutlet UITextField *key2Field;
@property (weak, nonatomic) IBOutlet UITextField *value2Field;

@end

@implementation TDCustomViewController

- (IBAction)submit:(UIButton *)sender {
    if (self.eventIDField.text.length == 0) {
        return;
    }
    
    NSString *eventID = self.eventIDField.text.length ? self.eventIDField.text : nil;
    NSString *eventValue = self.eventValueField.text.length ? self.eventValueField.text : nil;
    
    NSMutableDictionary *eventData = nil;
    if (self.key1Field.text.length > 0 && self.value1Field.text.length > 0) {
        eventData = [NSMutableDictionary dictionary];
        [eventData setObject:self.value1Field.text forKey:self.key1Field.text];
    }
    if (self.key2Field.text.length > 0 && self.value2Field.text.length > 0) {
        if (!eventData) {
            eventData = [NSMutableDictionary dictionary];
        }
        [eventData setObject:self.value2Field.text forKey:self.key2Field.text];
    }
    
    [TalkingDataSDK onEvent:eventID value:[eventValue doubleValue] parameters:eventData];
}

@end

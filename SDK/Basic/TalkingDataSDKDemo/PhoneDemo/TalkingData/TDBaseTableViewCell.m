//
//  TDBaseTableViewCell.m
//  PhoneDemo
//
//  Created by liweiqiang on 2019/8/27.
//  Copyright © 2019 TendCloud. All rights reserved.
//

#import "TDBaseTableViewCell.h"
#import "TalkingDataSDK.h"


@interface TDBaseTableViewCell ()

@property (weak, nonatomic) IBOutlet UITextField *deviceIDField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeField;

@end


@implementation TDBaseTableViewCell

- (IBAction)showDeviceID {
    self.deviceIDField.text = [TalkingDataSDK getDeviceId];
}

- (IBAction)setLocation:(UIButton *)sender {
    double latitude = [self.latitudeField.text doubleValue];
    double longitude = [self.longitudeField.text doubleValue];
    [TalkingDataSDK setLatitude:latitude longitude:longitude];
}

- (IBAction)exception:(UIButton *)sender {
    NSArray *array = [NSArray array];
    [array objectAtIndex:0];
}

- (IBAction)registerAccount {
    TalkingDataProfile *profile = [TalkingDataProfile createProfile];
    profile.name = @"name01";
    profile.type = TalkingDataProfileTypeWeiXin;
    profile.gender = TalkingDataGenderMale;
    profile.age = 18;
    profile.property1 = @"property1";
    profile.property2 = @2;
    profile.property3 = @3.14;
    profile.property4 = @"property4";
    profile.property5 = @"property5";
    profile.property6 = @0.618;
    profile.property7 = @"property7";
    profile.property8 = @"property8";
    profile.property9 = @9.8;
    profile.property10 = @"property10";
    [TalkingDataSDK onRegister:@"user01" profile:profile invitationCode:@"123456"];
}

- (IBAction)loginAccount {
    TalkingDataProfile *profile = [TalkingDataProfile createProfile];
    profile.name = @"name01";
    profile.type = TalkingDataProfileTypeWeiXin;
    profile.gender = TalkingDataGenderMale;
    profile.age = 18;
    profile.property1 = @"property1";
    profile.property2 = @2;
    profile.property3 = @3.14;
    profile.property4 = @"property4";
    profile.property5 = @"property5";
    profile.property6 = @0.618;
    profile.property7 = @"property7";
    profile.property8 = @"property8";
    profile.property9 = @9.8;
    profile.property10 = @"property10";
    [TalkingDataSDK onLogin:@"user01" profile:profile];
}

- (IBAction)updateAccount {
    TalkingDataProfile *profile = [TalkingDataProfile createProfile];
    profile.name = @"name01";
    profile.type = TalkingDataProfileTypeWeiXin;
    profile.gender = TalkingDataGenderMale;
    profile.age = 18;
    profile.property1 = @"property1";
    profile.property2 = @2;
    profile.property3 = @3.14;
    profile.property4 = @"property4";
    profile.property5 = @"property5";
    profile.property6 = @0.618;
    profile.property7 = @"property7";
    profile.property8 = @"property8";
    profile.property9 = @9.8;
    profile.property10 = @"property10";
    [TalkingDataSDK onProfileUpdate:profile];
}

- (IBAction)createCard {
    [TalkingDataSDK onCreateCard:@"user01" method:@"银行卡" content:@"6201234567891011"];
}

- (IBAction)favorite {
    [TalkingDataSDK onFavorite:@"书单" content:@"西游记"];
}

- (IBAction)share {
    [TalkingDataSDK onShare:@"user01" content:@"读书清单"];
}

- (IBAction)punch {
    [TalkingDataSDK onPunch:@"user01" punchId:@"早起打卡"];
}

- (IBAction)search:(id)sender {
    TalkingDataSearch *search = [TalkingDataSearch createSearch];
    search.category = @"服装类";
    search.content = @"2021新款";
    [TalkingDataSDK onSearch:search];
}

@end

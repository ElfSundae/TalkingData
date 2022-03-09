//
//  TDIndustryTableViewCell.m
//  PhoneDemo
//
//  Created by liweiqiang on 2019/8/27.
//  Copyright © 2019 TendCloud. All rights reserved.
//

#import "TDIndustryTableViewCell.h"
#import "TalkingDataSDK.h"

@implementation TDIndustryTableViewCell

#pragma mark - Retail action special

- (IBAction)retailSearch {
    TalkingDataSearch *search = [TalkingDataSearch createSearch];
    search.category = @"服装类";
    search.content = @"2021新款";
    search.itemId = @"123456";
    search.itemLocationId = @"456789";
    [TalkingDataSDK onSearch:search];
}

- (IBAction)retailContact {
    [TalkingDataSDK onContact:@"user01" content:@"联系店铺"];
}

- (IBAction)retailChargeBack {
    [TalkingDataSDK onChargeBack:@"user01" orderId:@"order01" reason:@"缺货" type:@"仅退款"];
}

- (IBAction)retailBooking {
    [TalkingDataSDK onBooking:@"user01" bookingId:@"booking01" category:@"服装类" amount:1000 content:@"2021新款"];
}

- (IBAction)retailViewItem {
    [TalkingDataSDK onViewItem:@"item01" category:@"手机" name:@"华为 P50" unitPrice:748800];
}

- (IBAction)retailAddItemToShoppingCart {
    [TalkingDataSDK onAddItemToShoppingCart:@"item02" category:@"电脑" name:@"MacBook Pro" unitPrice:1899900 amount:1];
}

- (IBAction)retailViewShoppingCart {
    TalkingDataShoppingCart *shoppingCart = [TalkingDataShoppingCart createShoppingCart];
    [shoppingCart addItem:@"item01" category:@"手机" name:@"华为 P50" unitPrice:748800 amount:2];
    [shoppingCart addItem:@"item02" category:@"电脑" name:@"MacBook Pro" unitPrice:1899900 amount:1];
    [TalkingDataSDK onViewShoppingCart:shoppingCart];
}

- (IBAction)retailPlaceOrder {
    TalkingDataOrder *order = [TalkingDataOrder createOrder:@"order01" total:3397500 currencyType:@"CNY"];
    [order addItem:@"item01" category:@"手机" name:@"华为 P50" unitPrice:748800 amount:2];
    [order addItem:@"item02" category:@"电脑" name:@"MacBook Pro" unitPrice:1899900 amount:1];
    [TalkingDataSDK onPlaceOrder:order profileId:@"user01"];
}

- (IBAction)retailOrderPay {
    TalkingDataOrder *order = [TalkingDataOrder createOrder:@"order01" total:3397500 currencyType:@"CNY"];
    [order addItem:@"item01" category:@"手机" name:@"华为 P50" unitPrice:748800 amount:2];
    [order addItem:@"item02" category:@"电脑" name:@"MacBook Pro" unitPrice:1899900 amount:1];
    [TalkingDataSDK onOrderPaySucc:order paymentType:@"WeChat" profileId:@"user01"];
}

- (IBAction)retailCancelOrder {
    TalkingDataOrder *order = [TalkingDataOrder createOrder:@"order01" total:3397500 currencyType:@"CNY"];
    [order addItem:@"item01" category:@"手机" name:@"华为 P50" unitPrice:748800 amount:2];
    [order addItem:@"item02" category:@"电脑" name:@"MacBook Pro" unitPrice:1899900 amount:1];
    [TalkingDataSDK onCancelOrder:order];
}

- (IBAction)retailTrialFinished {
    [TalkingDataSDK onTrialFinished:@"user01" content:@"赠送7天会员"];
}

#pragma mark - Game action special

- (IBAction)gamePay {
    [TalkingDataSDK onPay:@"user01" orderId:@"order02" amount:1077600 currencyType:@"CNY" paymentType:@"Alipay" itemId:nil itemCount:0];
}

- (IBAction)gameCreateRole {
    [TalkingDataSDK onCreateRole:@"role01"];
}

- (IBAction)gameLevelPass {
    [TalkingDataSDK onLevelPass:@"user01" levelId:@"99"];
}

- (IBAction)gameGuideFinished {
    [TalkingDataSDK onGuideFinished:@"user01" content:@"新手教程"];
}

- (IBAction)gameAchievementUnlock {
    [TalkingDataSDK onAchievementUnlock:@"user01" achievementId:@"成就1"];
}

#pragma mark - Finance action special

- (IBAction)financeContact {
    [TalkingDataSDK onContact:@"user01" content:@"理财咨询"];
}

- (IBAction)financeChargeBack {
    [TalkingDataSDK onChargeBack:@"user01" orderId:@"order03" reason:@"更换产品" type:@"犹豫期退单"];
}

- (IBAction)financeReservation {
    [TalkingDataSDK onReservation:@"user01" reservationId:@"reservation01" category:@"货币基金" amount:1000000 term:@"202118期"];
}

- (IBAction)financeCredit {
    [TalkingDataSDK onCredit:@"user01" amount:100000 content:@"酒店"];
}

- (IBAction)financeTransaction {
    TalkingDataTransaction *transaction = [TalkingDataTransaction createTransaction];
    transaction.transactionId = @"transaction01";
    transaction.category = @"定期存款";
    transaction.amount = 1000000;
    transaction.personA = @"甲方";
    transaction.personB = @"乙方";
    transaction.startDate = 1631234567890;
    transaction.endDate = 1631234567890;
    transaction.currencyType = @"CNY";
    transaction.content = @"一年期";
    [TalkingDataSDK onTransaction:@"user01" transaction:transaction];
}

- (IBAction)financeBrowse {
    [TalkingDataSDK onBrowse:@"user01" content:@"详情页" begin:1631234567890 duration:1000];
}

- (IBAction)financeTrialFinished {
    [TalkingDataSDK onTrialFinished:@"user01" content:@"体验金"];
}

#pragma mark - Tour action special

- (IBAction)tourSearch {
    TalkingDataSearch *search = [TalkingDataSearch createSearch];
    search.category = @"景点";
    search.content = @"游乐园";
    search.destination = @"上海";
    search.origin = @"北京";
    search.startDate = 1631234567890;
    search.endDate = 1631234567890;
    [TalkingDataSDK onSearch:search];
}

- (IBAction)tourContact {
    [TalkingDataSDK onContact:@"user01" content:@"联系店家"];
}

- (IBAction)tourPay {
    [TalkingDataSDK onPay:@"user01" orderId:@"order04" amount:89900 currencyType:@"CNY" paymentType:@"ApplePay" itemId:nil itemCount:0];
}

- (IBAction)tourChargeBack {
    [TalkingDataSDK onChargeBack:@"user01" orderId:@"order04" reason:@"航班取消" type:@"退款"];
}

- (IBAction)tourBooking {
    [TalkingDataSDK onBooking:@"user01" bookingId:@"booking02" category:@"酒店" amount:1000 content:@"标准间"];
}

- (IBAction)tourBrowse {
    [TalkingDataSDK onBrowse:@"user01" content:@"景点介绍" begin:1631234567890 duration:110];
}

- (IBAction)tourTrialFinished {
    [TalkingDataSDK onTrialFinished:@"user01" content:@"新户体验"];
}

#pragma mark - Online education action special

- (IBAction)eduContact {
    [TalkingDataSDK onContact:@"user01" content:@"联系老师"];
}

- (IBAction)eduPay {
    [TalkingDataSDK onPay:@"user01" orderId:@"order05" amount:366600 currencyType:@"CNY" paymentType:@"UnionPay" itemId:nil itemCount:0];
}

- (IBAction)eduChargeBack {
    [TalkingDataSDK onChargeBack:@"user01" orderId:@"order05" reason:@"客户原因" type:@"退余款"];
}

- (IBAction)eduReservation {
    [TalkingDataSDK onReservation:@"user01" reservationId:@"reservation02" category:@"成人教育" amount:150000 term:@"10课时"];
}

- (IBAction)eduLearn {
    [TalkingDataSDK onLearn:@"user01" course:@"计算机基础第一课" begin:1631234567890 duration:3600];
}

- (IBAction)eduPreviewFinished {
    [TalkingDataSDK onPreviewFinished:@"user01" content:@"课程试听"];
}

- (IBAction)eduAchievementUnlock {
     [TalkingDataSDK onAchievementUnlock:@"user01" achievementId:@"成就2"];
}

#pragma mark - Reading action special

- (IBAction)readingPay {
    [TalkingDataSDK onPay:@"user01" orderId:@"order06" amount:100 currencyType:@"CNY" paymentType:@"WeChat" itemId:nil itemCount:0];
}

- (IBAction)readingRead {
    [TalkingDataSDK onRead:@"user01" book:@"西游记第一章" begin:1631234567890 duration:1230];
}

- (IBAction)readingFreeFinished {
    [TalkingDataSDK onFreeFinished:@"user01" content:@"第一章"];
}

#pragma mark - Other action

- (IBAction)otherPay {
    [TalkingDataSDK onPay:@"user01" orderId:@"order07" amount:10000 currencyType:@"CNY" paymentType:@"Alipay" itemId:nil itemCount:0];
}

- (IBAction)otherBrowse {
    [TalkingDataSDK onBrowse:@"user01" content:@"详情页" begin:1631234567890 duration:110];
}

- (IBAction)otherTrialFinished {
    [TalkingDataSDK onTrialFinished:@"user01" content:@"试用体验"];
}

@end

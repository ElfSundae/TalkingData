# TalkingData SDK

[![CocoaPods](https://img.shields.io/cocoapods/v/TalkingData)](https://cocoapods.org/pods/TalkingData)
[![Build](https://github.com/ElfSundae/TalkingData/actions/workflows/build.yml/badge.svg)](https://github.com/ElfSundae/TalkingData/actions/workflows/build.yml)

[TalkingData](https://www.talkingdata.com) 统一升级版 SDK 的 CocoaPods 集成库。[SDK](SDK) 目录下包含官方 Demo 源码。

> v4.x 旧版本的 App Analytics 应用统计分析 SDK 见：[TalkingDataAppAnalytics](https://github.com/ElfSundae/TalkingDataAppAnalytics)

- 官方开发文档：https://doc.talkingdata.com/posts/1024
- 官方 SDK 下载地址：https://doc.talkingdata.com/posts/1014

## 安装

本 Pod 库包含两个可选版本：基础版（默认）、全功能版。

### 基础版

- 数据分析基础功能：提供统计类基础指标，如：点击、激活、启动、注册、留存等；支持常用分析维度，如：渠道、版本、地区；以上部分能力可通过SDK接口来配置您所需的支持等级。
- 流量鉴真作弊防护：基于对应用的综合使用情况，网络坏境信息合位置的突变性识别，来提供的作弊防护功能。为支持此功能，会增加必要的额外的采集项及频度。
- 自定义事件：统计客户自定义事件埋点，基础计算指标有：事件触发次数、时间、人数等信息；也可通过探索能力，计算更多自定义指标。为支持此功能，会增加必要的额外的采集项及频度。依赖于自定义埋点的使用深度。

```ruby
pod 'TalkingData'
```

或者：

```ruby
pod 'TalkingData/Basic'
```

### 全功能版

- 数据分析基础功能
- 流量鉴真作弊防护
- 自定义事件
- 用户画像和客群分析
- 灵动分析
- Tracking Sking
- 行业专属事件

```ruby
pod 'TalkingData/Full'
```

## 示例

```objc
#import <TalkingData/TalkingData.h>

NSString *UDID = [UIDevice.currentDevice talkingDataDeviceIdentifier];
```

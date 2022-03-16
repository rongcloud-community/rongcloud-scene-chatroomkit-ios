//
//  RCChatroomSceneMessageViewConfig.m
//  RCChatroomSceneKit
//
//  Created by johankoi on 2021/12/7.
//

#import "RCChatroomSceneMessageViewConfig.h"
#import "RCAttribute+Convert.h"
#import "RCChatroomSceneConfigHelper.h"
#import <RCCoreKit/RCCoreKit.h>

@implementation RCChatroomSceneMessageViewConfig
+ (instancetype)default {
    return [self creatPrimaryConfig];
//    RCChatroomSceneMessageViewConfig *config = [RCChatroomSceneConfigHelper configFromJsonForClass:[self class]];
//    if (config != nil) {
//        return config;
//    } else {
//        return [self creatPrimaryConfig];
//    }
}

+ (RCChatroomSceneMessageViewConfig *)creatPrimaryConfig {
    RCChatroomSceneMessageViewConfig *config = [[RCChatroomSceneMessageViewConfig alloc] init];
    config.contentInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    config.maxVisibleCount = 50;
    config.defaultBubbleColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    config.bubbleInsets = UIEdgeInsetsMake(8, 12, 6.5, 12);
    RCCornerValue *cornerValue = [RCCornerValue new];
    cornerValue.topLeft = @(0);
    cornerValue.topRight = @(6);
    cornerValue.bottomLeft = @(6);
    cornerValue.bottomRight = @(6);
    RCCorner *corner = [RCCorner new];
    corner.radius = 10;
    corner.value = cornerValue;
    config.defaultBubbleCorner = corner;
    config.defaultBubbleTextColor = [UIColor colorWithRed:106 green:159 blue:255 alpha:1];
    config.bubbleSpace = 0;
    config.voiceIconColor = UIColor.whiteColor;
    return config;
}


- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    _contentInsets = [RCInsets yy_modelWithJSON:dic[@"contentInsets"]].toUIEdgeInsets;
    _defaultBubbleColor = [RCColor yy_modelWithJSON:dic[@"defaultBubbleColor"]].toUIColor;
    _bubbleInsets = [RCInsets yy_modelWithJSON:dic[@"bubbleInsets"]].toUIEdgeInsets;
    _defaultBubbleTextColor = [RCColor yy_modelWithJSON:dic[@"defaultBubbleTextColor"]].toUIColor;
    _voiceIconColor = [RCColor yy_modelWithJSON:dic[@"voiceIconColor"]].toUIColor;
    _defaultBubbleCorner = [RCCorner yy_modelWithJSON:dic[@"defaultBubbleCorner"]];
    return YES;
}

- (void)merge:(RCChatroomSceneMessageViewConfig *)config {
    if (config == self) {
        return;
    }
    NSDictionary *propertyInfos = [YYClassInfo classInfoWithClass:[config class]].propertyInfos;
    [propertyInfos enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        id value = [config valueForKey:key];
//        NSLog(@"key:%@, value:%@, valueClass:%@",key,value, [value class]);
        if (value != nil) {
            [self setValue:value forKey:key];
        }
    }];
}
@end

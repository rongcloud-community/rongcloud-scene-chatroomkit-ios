//
//  RCChatroomSceneInputBarConfig.m
//  RCSceneChatroomKit
//
//  Created by johankoi on 2021/12/6.
//

#import "RCChatroomSceneInputBarConfig.h"
#import "RCChatroomSceneConfigHelper.h"
#import "RCAttribute+Convert.h"

@implementation RCChatroomSceneInputBarConfig

+ (instancetype)default {
    return [self creatPrimaryConfig];
//    RCChatroomSceneInputBarConfig *config = [RCChatroomSceneConfigHelper configFromJsonForClass:[self class]];
//    if (config != nil) {
//        return config;
//    } else {
//        return [self creatPrimaryConfig];
//    }
}

+ (RCChatroomSceneInputBarConfig *)creatPrimaryConfig {
    RCChatroomSceneInputBarConfig *config = [[RCChatroomSceneInputBarConfig alloc] init];
    config.backgroundColor = [UIColor colorWithRed:86/255.0 green:68/255.0 blue:168/255.0 alpha:1];
    config.contentInsets = UIEdgeInsetsMake(7, 12, 7, 12);
    config.inputBackgroundColor = UIColor.whiteColor;
    config.inputCorner = 6;
    config.inputTextMaxLength = 1000;
    config.inputMinHeight = 34;
    config.inputMaxHeight = 70;
    config.inputTextSize = 14;
    config.inputTextColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
    config.inputHint = @"聊聊吧...";
    config.inputHintColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1];
    config.inputInsets = UIEdgeInsetsMake(5, 10, 5, 10);
    config.emojiEnable = YES;
    return config;
}

- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    _backgroundColor = [RCColor yy_modelWithJSON:dic[@"backgroundColor"]].toUIColor;
    _contentInsets = [RCInsets yy_modelWithJSON:dic[@"contentInsets"]].toUIEdgeInsets;
    _inputBackgroundColor = [RCColor yy_modelWithJSON:dic[@"inputBackgroundColor"]].toUIColor;
    _inputTextColor = [RCColor yy_modelWithJSON:dic[@"inputTextColor"]].toUIColor;
    _inputHintColor = [RCColor yy_modelWithJSON:dic[@"inputHintColor"]].toUIColor;
    _inputInsets = [RCInsets yy_modelWithJSON:dic[@"inputInsets"]].toUIEdgeInsets;

    return YES;
}

- (void)merge:(RCChatroomSceneInputBarConfig *)config {
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

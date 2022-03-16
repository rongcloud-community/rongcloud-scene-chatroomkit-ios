//
//  RCAttribute+Convert.h
//  RCChatroomSceneKit
//
//  Created by johankoi on 2021/12/9.
//

#import <RCCoreKit/RCCoreKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RCCorner (Convert)
- (UIBezierPath *)bezierPathWithRoundedRect:(CGRect)rect;
@end

@interface RCInsets (Convert)
- (UIEdgeInsets)toUIEdgeInsets;
@end

@interface RCColor (Convert)
- (UIColor *)toUIColor;
@end

@interface RCSize (Convert)
- (CGSize)toCGSize;
@end



@interface RCAttributes (Convert)

@end

NS_ASSUME_NONNULL_END

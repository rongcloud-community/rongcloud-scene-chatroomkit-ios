//
//  RCAttribute+Convert.m
//  RCChatroomSceneKit
//
//  Created by johankoi on 2021/12/9.
//

#import "RCAttribute+Convert.h"

@implementation RCCorner (Convert)
- (UIBezierPath *)bezierPathWithRoundedRect:(CGRect)rect {
    
    CGFloat leftTop = self.value.topLeft.doubleValue;
    CGFloat rightTop = self.value.topRight.doubleValue;
    CGFloat leftBottom = self.value.bottomLeft.doubleValue;
    CGFloat rightBottom = self.value.bottomRight.doubleValue;
    
    UIRectCorner corner = 0;
    CGFloat radii = 0;
    if (leftTop != 0) {
        corner |= UIRectCornerTopLeft;
        radii = leftTop;
    }
    if (rightTop != 0) {
        corner |= UIRectCornerTopRight;
        radii = rightTop;
    }
    if (leftBottom != 0) {
        corner |= UIRectCornerBottomLeft;
        radii = leftBottom;
    }
    if (rightBottom != 0) {
        corner |= UIRectCornerBottomRight;
        radii = rightBottom;
    }
    if (self.radius != 0 && corner == 0) {
        corner |= UIRectCornerAllCorners;
        radii = self.radius;
    }
    UIBezierPath *cornerPath = nil;
    if (corner != 0 && radii != 0) {
        cornerPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corner cornerRadii:CGSizeMake(radii, radii)];
    }
    return cornerPath;
}
@end


@implementation RCInsets (Convert)
- (UIEdgeInsets)toUIEdgeInsets {
    return self.value ? self.value.insets : UIEdgeInsetsMake(0, 0, 0, 0);
}
@end


@implementation RCColor (Convert)
- (UIColor *)toUIColor {
    return self.value ? self.value.color : [UIColor clearColor];
}
@end


@implementation RCSize (Convert)
- (CGSize)toCGSize {
    return self.value ? self.value.size : CGSizeMake(0, 0);
}
@end




@implementation RCAttributes (Convert)

@end

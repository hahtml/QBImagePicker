//
//  UIViewController+EnableAnimation.m
//  FirebaseCore
//
//  Created by Maolei Tang on 8/25/19.
//

#import <objc/runtime.h>
#import "UIViewController+EnableAnimation.h"

static void *EnableAnimationPropertyKey = &EnableAnimationPropertyKey;

@implementation UIViewController (EnableAnimation)

- (BOOL)enableAnimation {
    NSNumber *number = objc_getAssociatedObject(self, EnableAnimationPropertyKey);
    return number.boolValue;
}

- (void)setEnableAnimation:(BOOL)enableAnimation {
    NSNumber *number = [NSNumber numberWithBool: enableAnimation];
    objc_setAssociatedObject(self, EnableAnimationPropertyKey, number, OBJC_ASSOCIATION_RETAIN);
}

@end

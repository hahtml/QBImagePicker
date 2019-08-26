//
//  PushNoAnimationSegue.m
//  FirebaseCore
//
//  Created by Maolei Tang on 8/25/19.
//

#import "PushNoAnimationSegue.h"
#import "UIViewController+EnableAnimation.h"

@implementation PushNoAnimationSegue

- (void)perform {
    if (self.sourceViewController.enableAnimation) {
        [self.sourceViewController.navigationController pushViewController:self.destinationViewController animated:YES];
    } else {
        [self.sourceViewController.navigationController pushViewController:self.destinationViewController animated:NO];
    }
}

@end

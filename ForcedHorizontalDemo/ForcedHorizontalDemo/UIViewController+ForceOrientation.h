//
//  UIViewController+ForceOrientation.h
//  ForcedHorizontalDemo
//
//  Created by YANGGL on 2017/12/26.
//  Copyright © 2017年 YANGGL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (ForceOrientation)

/**
 * 强制横屏或竖屏
 */
- (void)updateOrientationLandscapeOrPortrait:(BOOL)animation;

/**
 * 允许横屏和竖屏
 */
- (void)updateOrientationAll:(BOOL)animation;

@end

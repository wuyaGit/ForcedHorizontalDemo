//
//  UIViewController+ForceOrientation.m
//  ForcedHorizontalDemo
//
//  Created by YANGGL on 2017/12/26.
//  Copyright © 2017年 YANGGL. All rights reserved.
//

#import "UIViewController+ForceOrientation.h"
#import "AppDelegate.h"

@implementation UIViewController (ForceOrientation)

#pragma mark - public

- (void)updateOrientationLandscapeOrPortrait:(BOOL)animation {
    //不允许转屏
    [self forceOrientationLandscapeOrPortrait];
    
    //当iPad时，且不是右侧横屏(UIInterfaceOrientationLandscapeRight)，强制横屏，并刷新界面
    if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad) {
        if ([UIApplication sharedApplication].statusBarOrientation != UIInterfaceOrientationLandscapeRight) {
            
            //关键：强制横屏，Home键在右边
            [[UIDevice currentDevice] setValue:@(UIInterfaceOrientationLandscapeRight) forKey:@"orientation"];
            //刷新控制器。否则，[UIScreen mainScreen].bounds的size不是你期望的；self.view.frame/bounds都不是期望的。
            [UIViewController attemptRotationToDeviceOrientation];
        }
        
    }else {
        if ([UIApplication sharedApplication].statusBarOrientation != UIInterfaceOrientationPortrait) {
            //关键：强制竖屏
            [[UIDevice currentDevice] setValue:@(UIInterfaceOrientationPortrait) forKey:@"orientation"];
            //刷新控制器。
            [UIViewController attemptRotationToDeviceOrientation];
        }
    }
}

- (void)updateOrientationAll:(BOOL)animation {
    //允许横屏和竖屏
    [self forceOrientationAll];
}

#pragma mark - 是否允许转屏

/**
 * 不允许转屏
 */
- (void)forceOrientationLandscapeOrPortrait {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    //不允许再转屏
    appDelegate.allowRotation = false;
    [appDelegate application:[UIApplication sharedApplication] supportedInterfaceOrientationsForWindow:self.view.window];
}

/**
 * 允许转屏
 */
- (void)forceOrientationAll {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    //允许转屏
    appDelegate.allowRotation = true;
    [appDelegate application:[UIApplication sharedApplication] supportedInterfaceOrientationsForWindow:self.view.window];
}

@end

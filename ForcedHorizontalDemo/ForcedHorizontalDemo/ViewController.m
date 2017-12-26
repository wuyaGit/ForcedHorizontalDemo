//
//  ViewController.m
//  ForcedHorizontalDemo
//
//  Created by YANGGL on 2017/12/26.
//  Copyright © 2017年 YANGGL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTouchPresentAction:(id)sender {
    UINavigationController *baseNavigation = [self.storyboard instantiateViewControllerWithIdentifier:@"baseNavigation"];
    
    [self presentViewController:baseNavigation animated:YES completion:nil];
}

@end

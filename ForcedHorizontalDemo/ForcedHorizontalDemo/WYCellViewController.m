//
//  WYCellViewController.m
//  ForcedHorizontalDemo
//
//  Created by YANGGL on 2017/12/26.
//  Copyright © 2017年 YANGGL. All rights reserved.
//

#import "WYCellViewController.h"
#import "UIViewController+ForceOrientation.h"

@interface WYCellViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation WYCellViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
 
    if ([self.number integerValue] % 2) {
        [self updateOrientationLandscapeOrPortrait:animated];
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    if ([self.number integerValue] % 2) {
        [self updateOrientationAll:animated];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([self.number integerValue] % 2) {
        self.textLabel.text = [NSString stringWithFormat:@"Cell %@:强制横竖屏", self.number];
    }else {
        self.textLabel.text = [NSString stringWithFormat:@"Cell %@:允许横竖屏", self.number];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

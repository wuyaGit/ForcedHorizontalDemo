//
//  WYTableViewController.m
//  ForcedHorizontalDemo
//
//  Created by YANGGL on 2017/12/26.
//  Copyright © 2017年 YANGGL. All rights reserved.
//

#import "WYTableViewController.h"

@interface WYTableViewController ()

@end

@implementation WYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Touch

- (IBAction)onTouchBackAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
    cell.backgroundColor = indexPath.row % 2 ? [UIColor colorWithRed:1 green:0 blue:0 alpha:0.3] : [UIColor colorWithRed:0 green:0 blue:1 alpha:0.3];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %@", @(indexPath.row + 1)];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self performSegueWithIdentifier:@"seguePushCellVC" sender:@(indexPath.row + 1)];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"seguePushCellVC"]) {
        [segue.destinationViewController setValue:sender forKey:@"number"];
    }
}

@end

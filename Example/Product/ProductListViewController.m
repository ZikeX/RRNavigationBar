//
//  ProductRootViewController.m
//  RRNavigationBar
//
//  Created by Moch Xiao on 3/27/17.
//  Copyright © 2017 RedRain. All rights reserved.
//

#import "ProductListViewController.h"
#import "ProductViewController.h"
#import "RRNavigationBar.h"

@interface ProductListViewController ()

@end

@implementation ProductListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Product List";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(handleClickNext:)];

//    {
//        [self.rr_navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
//        self.rr_navigationBar.shadowImage = [UIImage new];
//    }
}

- (void)handleClickNext:(UIBarButtonItem *)sender {
    [self.navigationController pushViewController:[ProductViewController new] animated:YES];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductListViewController.reuseIdentifier"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ProductListViewController.reuseIdentifier"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Product %@", @(indexPath.row)];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self handleClickNext:nil];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end

//
//  ViewController.m
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#import "ViewController.h"
#import <UIView+LayoutMethods.h>
#import "CommonHeader.h"

NSString * const kBSDataSourceItemKeyTestCaseType = @"kBSDataSourceItemKeyTestCaseType";
NSString * const kBSDataSourceItemKeyTestCaseTitle = @"kBSDataSourceItemKeyTestCaseTitle";

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView fill];
}

#pragma mark - UITableViewDelegate

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.tag = [self.dataSource[indexPath.row][kBSDataSourceItemKeyTestCaseType] unsignedIntegerValue];;
    cell.textLabel.text = self.dataSource[indexPath.row][kBSDataSourceItemKeyTestCaseTitle];
    return cell;
}

#pragma mark - getters and setters
- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = @[
                        @{
                            kBSDataSourceItemKeyTestCaseType:@(TestCaseTypeScrollView),
                            kBSDataSourceItemKeyTestCaseTitle:@"scroll view test case >"
                            }
                        ];
    }
    return _dataSource;
}


@end

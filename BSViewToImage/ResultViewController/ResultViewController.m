//
//  ResultViewController.m
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#import "ResultViewController.h"
#import "TestCaseFactory.h"
#import <UIView+LayoutMethods.h>

@interface ResultViewController ()

@property (nonatomic, strong) TestCaseFactory *testCaseFactory;
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation ResultViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    id<TestCaseProtocol> testCase = [self.testCaseFactory testCaseWithType:self.testCaseType];
    UIImageView *resultImageView = [testCase generateImageView];
    
    [self.view addSubview:self.scrollView];
    [self.scrollView addSubview:resultImageView];
    
    self.scrollView.contentSize = resultImageView.size;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.scrollView fill];
}

#pragma mark - getters and setters
- (TestCaseFactory *)testCaseFactory
{
    if (_testCaseFactory == nil) {
        _testCaseFactory = [[TestCaseFactory alloc] init];
    }
    return _testCaseFactory;
}

- (UIScrollView *)scrollView
{
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] init];
    }
    return _scrollView;
}


@end

//
//  ScrollViewTestCase.m
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#import "ScrollViewTestCase.h"
#import "UIView+ViewToImage.h"

@implementation ScrollViewTestCase

#pragma mark - TestCaseProtocol
- (UIImageView *)generateImageView
{
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.frame = CGRectMake(0, 0, 300, 300);
    scrollView.contentSize = CGSizeMake(400, 800);
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 400, 100)];
    redView.backgroundColor = [UIColor redColor];
    [scrollView addSubview:redView];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 300, 200)];
    blueView.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:blueView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(300, 100, 100, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:greenView];
    
    UIView *cyanView = [[UIView alloc] initWithFrame:CGRectMake(0, 300, 100, 300)];
    cyanView.backgroundColor = [UIColor cyanColor];
    [scrollView addSubview:cyanView];
    
    UIView *brownView = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 300, 300)];
    brownView.backgroundColor = [UIColor brownColor];
    [scrollView addSubview:brownView];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(0, 600, 200, 200)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:yellowView];
    
    UIView *orangeView = [[UIView alloc] initWithFrame:CGRectMake(200, 600, 200, 200)];
    orangeView.backgroundColor = [UIColor orangeColor];
    [scrollView addSubview:orangeView];
    
    UIImage *image = [scrollView transformToImage];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    return imageView;
}

@end

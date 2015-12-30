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
    
    UIView *blackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
    blackView.backgroundColor = [UIColor blackColor];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 400, 400, 400)];
    redView.backgroundColor = [UIColor redColor];
    
    [scrollView addSubview:blackView];
    [scrollView addSubview:redView];
    scrollView.frame = CGRectMake(0, 0, 300, 300);
    scrollView.contentSize = CGSizeMake(400, 800);
    
    UIImage *image = [scrollView transformToImage];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    return imageView;
}

@end

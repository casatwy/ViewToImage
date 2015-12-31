//
//  UIView+ViewToImage.m
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#import "UIView+ViewToImage.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (ViewToImage)

- (UIImage *)transformToImage
{
    CGSize selfSize = self.frame.size;
    if ([self isKindOfClass:[UIScrollView class]]) {
        UIScrollView *scrollView = (UIScrollView *)self;
        selfSize = scrollView.contentSize;
    }
    
    UIGraphicsBeginImageContextWithOptions(selfSize, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    if ([self isKindOfClass:[UIScrollView class]]) {
        UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, selfSize.width, selfSize.height)];
        [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [contentView addSubview:obj];
        }];
        [contentView.layer renderInContext:context];
        [contentView.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self addSubview:obj];
        }];
    } else {
        [self.layer renderInContext:context];
    }
    
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return resultImage;
}

@end

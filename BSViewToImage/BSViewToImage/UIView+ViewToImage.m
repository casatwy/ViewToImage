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
    
    UIGraphicsBeginImageContext(selfSize);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    if ([self isKindOfClass:[UIScrollView class]]) {
    } else {
        [self.layer renderInContext:context];
    }
    
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    
    return resultImage;
}

@end

//
//  SingleViewTestCase.m
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#import "SingleViewTestCase.h"
#import "UIView+ViewToImage.h"

@implementation SingleViewTestCase

#pragma mark - TestCaseProtocol
- (UIImageView *)generateImageView
{
    UIImage *image = [UIImage imageNamed:@"testImage"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, 300, 300);
    
    image = [imageView transformToImage];
    imageView.image = image;
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    return imageView;
}

@end

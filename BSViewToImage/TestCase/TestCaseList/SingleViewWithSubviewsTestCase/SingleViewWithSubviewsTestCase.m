//
//  SingleViewWithSubviewsTestCase.m
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#import "SingleViewWithSubviewsTestCase.h"
#import "UIView+ViewToImage.h"

@implementation SingleViewWithSubviewsTestCase

#pragma mark - TestCaseProtocol
- (UIImageView *)generateImageView
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 1000)];
    
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 300)];
    subView.backgroundColor = [UIColor redColor];
    [view addSubview:subView];
    
    UIImage *image = [UIImage imageNamed:@"testImage"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 300, 500, 400)];
    imageView.image = image;
    [view addSubview:imageView];
    
    UIView *subview2 = [[UIView alloc] initWithFrame:CGRectMake(0, 700, 500, 300)];
    subview2.backgroundColor = [UIColor blueColor];
    [view addSubview:subview2];
    
    image = [view transformToImage];
    imageView.image = image;
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    
    return imageView;
}

@end

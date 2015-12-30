//
//  CommonHeader.h
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#ifndef CommonHeader_h
#define CommonHeader_h

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, TestCaseType) {
    TestCaseTypeScrollView,
    TestCaseTypeSingleView,
    TestCaseTypeSingleViewWithSubviews,
    TestCaseTypeSingleViewLargerThanScreen
    
};

@protocol TestCaseProtocol <NSObject>

- (UIImageView *)generateImageView;

@end

#endif /* CommonHeader_h */

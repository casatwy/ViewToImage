//
//  TestCaseFactory.m
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#import "TestCaseFactory.h"

#import "ScrollViewTestCase.h"
#import "SingleViewTestCase.h"
#import "SingleViewWithSubviewsTestCase.h"
#import "SingleViewLargerThanScreenTestCase.h"

@implementation TestCaseFactory

- (id<TestCaseProtocol>)testCaseWithType:(TestCaseType)testCaseType
{
    id<TestCaseProtocol> result = nil;
    
    if (testCaseType == TestCaseTypeScrollView) {
        result = [[ScrollViewTestCase alloc] init];
    }
    
    if (testCaseType == TestCaseTypeSingleView) {
        result = [[SingleViewTestCase alloc] init];
    }
    
    if (testCaseType == TestCaseTypeSingleViewWithSubviews) {
        result = [[SingleViewWithSubviewsTestCase alloc] init];
    }
    
    if (testCaseType == TestCaseTypeSingleViewLargerThanScreen) {
        result = [[SingleViewLargerThanScreenTestCase alloc] init];
    }
    
    return result;
}

@end

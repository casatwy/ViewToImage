//
//  TestCaseFactory.h
//  BSViewToImage
//
//  Created by casa on 15/12/30.
//  Copyright © 2015年 casa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommonHeader.h"

@interface TestCaseFactory : NSObject

- (id<TestCaseProtocol>)testCaseWithType:(TestCaseType)testCaseType;

@end

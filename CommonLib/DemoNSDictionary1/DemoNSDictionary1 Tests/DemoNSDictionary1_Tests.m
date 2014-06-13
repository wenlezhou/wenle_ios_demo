//
//  DemoNSDictionary1_Tests.m
//  DemoNSDictionary1 Tests
//
//  Created by Wenle Zhou on 14-6-13.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DemoNSDictionary.h"

@interface DemoNSDictionary1_Tests : XCTestCase

@end

@implementation DemoNSDictionary1_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample
//{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
//}

- (void)testShowDictionary
{
    NSLog(@"Hello, World!");
    NSDictionary *demoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
    DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
    [dnsd showNSDictionary:demoDict];
    
    XCTAssertNotNil(dnsd, @"Instance should not nil");
    
}
@end

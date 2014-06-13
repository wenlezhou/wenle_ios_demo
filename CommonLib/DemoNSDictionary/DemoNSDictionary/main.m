//
//  main.m
//  DemoNSDictionary1
//
//  Created by Wenle Zhou on 14-6-13.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoNSDictionary.h"

@interface TestClass : NSObject

@end

@implementation TestClass

-(void) test_setDemoDict1
{
    
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        [dnsd setDemoDict1];
    }
    
}

-(void) test_setDemoDict2
{
    
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        [dnsd setDemoDict2:[NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"key1",@"value3",@"key3", nil]];
    }
    
}

-(void) test_showNSDictionary
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        [dnsd showNSDictionary:[NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"key1",@"value4",@"key4", nil]];
        
    }
}



@end

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
    
        TestClass *tc = [[TestClass alloc]init  ];
        [tc test_setDemoDict1];
        [tc test_setDemoDict1];
        [tc test_showNSDictionary];
        
        
    }
    return 0;
}


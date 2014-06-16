//
//  main.m
//  DemoNSString
//
//  Created by Wenle Zhou on 14-6-15.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

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

@end



int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        TestClass *tc = [[TestClass alloc]init  ];
        [tc test_setDemoDict1];
        
    }
    return 0;
}




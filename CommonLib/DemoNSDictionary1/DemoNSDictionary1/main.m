//
//  main.m
//  DemoNSDictionary1
//
//  Created by Wenle Zhou on 14-6-13.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoNSDictionary.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
            NSLog(@"Hello, World!");
            NSDictionary *demoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
            DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
            [dnsd showNSDictionary:demoDict];
            
    }
    return 0;
}


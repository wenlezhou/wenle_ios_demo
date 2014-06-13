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

-(void) test_setDemoDict3
{
    
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        //获取应用程序根目录
        NSString *path = NSHomeDirectory();
        NSString *str =  @"/wenle_ios_demo/CommonLib/DemoNSDictionary/resource/12.plist";
        path = [NSString stringWithFormat:@"%@%@",path,str];
        
        [dnsd setDemoDict3:path];
    }
    
}

-(void) test_showNSDictionary
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        [dnsd showNSDictionary:[NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"key1",@"value4",@"key4", nil]];
        
    }
}
-(void) test_dictContentCopy
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        
        NSMutableDictionary* demoDict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
        
        NSMutableDictionary* demoDict2;
        NSMutableDictionary* demoDict3;
        
        demoDict2 = [dnsd dictContentCopy:demoDict2 dictName2:demoDict1];
        demoDict3 = demoDict1;
         //向字典中添加新的velue和key
        [demoDict1 setValue:@"value4" forKey:@"key4"];
        
        NSLog(@"Compare demoDict value");
        NSLog([dnsd formatNSDictionary:demoDict1]);
        NSLog([dnsd formatNSDictionary:demoDict2]);
        NSLog([dnsd formatNSDictionary:demoDict3]);
        
    }
}



@end

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
    
        TestClass *tc = [[TestClass alloc]init  ];
//        [tc test_setDemoDict1];
//        [tc test_setDemoDict2];
//        [tc test_showNSDictionary];
//        [tc test_setDemoDict3];
        [tc test_dictContentCopy];
        
        
    }
    return 0;
}


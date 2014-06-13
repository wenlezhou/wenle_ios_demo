//
//  DemoNSDictionary.m
//  DemoNSDictionary
//
//  Created by Wenle Zhou on 14-6-13.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "DemoNSDictionary.h"

@implementation DemoNSDictionary
{
    //创建一个空的字典
    NSDictionary *_demoDict1;
    NSDictionary *_demoDict2;
}


-(void)setDemoDict1
{
    _demoDict1 = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
}

-(void)setDemoDict2:(NSDictionary *) dict
{
    //初始化字典
    _demoDict2 = dict;
    
}


-(void)showNSDictionary:(NSDictionary *)dict
{
    NSMutableString *result = [NSMutableString string];
    
    for (NSUInteger i = 0 ; i < [dict count];i++)
    {
        [result appendFormat:@"%@",dict];
    }
    
    NSLog(result);
}

@end

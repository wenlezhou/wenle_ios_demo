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
    NSDictionary *_demoDict3;
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

-(void)setDemoDict3:(NSString *)str
{
    //创建一个字典，将字典中的内容设置为指定文件中的所有内容，其语法形式如下：
    _demoDict3 = [NSDictionary dictionaryWithContentsOfFile:str];
    NSLog([self formatNSDictionary:_demoDict3]);
    
}

-(NSDictionary *)dictContentCopy:(NSDictionary *)destDict dictName2:(NSDictionary *)srcDict
{
    destDict = [NSMutableDictionary dictionaryWithDictionary:srcDict];
//    NSLog([self formatNSDictionary:destDict]);
    
    return destDict;
}


-(NSMutableString *)formatNSDictionary:(NSDictionary *)dict
{
    NSMutableString *result = [NSMutableString string];
    [result appendFormat:@"%@",dict];
    return result;
    
    
//    for (NSUInteger i = 0 ; i < [dict count];i++)
//    {
//        [result appendFormat:@"%@",dict];
//    }
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

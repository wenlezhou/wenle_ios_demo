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

//字典的初始化
-(void)setDemoDict1
{
    _demoDict1 = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
}

//字典的初始化
-(void)setDemoDict2:(NSDictionary *) dict
{
    _demoDict2 = dict;
    
}

//字典的初始化
-(void)setDemoDict3:(NSString *)str
{
    //创建一个字典，将字典中的内容设置为指定文件中的所有内容，其语法形式如下：
    _demoDict3 = [NSDictionary dictionaryWithContentsOfFile:str];
    NSLog([self formatNSDictionary:_demoDict3]);
    
}

//字典内容COPY
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


//获取字典的数量
-(NSInteger )getDictCount:(NSDictionary *)dict
{
    
    NSInteger count=[dict count];
    NSLog(@"%d",count);
    return count;
    
}

//根据key取得字典的值
-(NSString *)getDictValueByKey:(NSDictionary *)dict keyName:(NSString *)key
{
    //获取k3的value
    NSString *string=[dict objectForKey:key];
    NSLog(@"value:%@",string);
    return string;
}


//获取字典的所有Key
-(NSArray *)getDictAllKey:(NSDictionary *)dict
{
    //获取字典中所有的key和value
    NSArray *keyArray=[dict allKeys];
    NSArray *valueArry=[dict allValues];
    NSLog(@"keyArray:%@valueArry:%@",keyArray,valueArry);
    return keyArray;

}

//字典的遍历
-(void)iteratorDict1:(NSDictionary *)dict
{
    NSString *result = [NSString string];
    
    for (NSUInteger i = 0 ; i < [dict count];i++)
    {
        result = [dict objectForKey:[[dict allKeys]objectAtIndex:i]];
        NSLog(result);
    }
}

//字典的遍历
-(void)iteratorDict2:(NSDictionary *)dict
{
   for (NSString *key in dict)
   {
       NSString *object = [dict objectForKey:key];
       NSLog(@"[%@:%@]\n",key,object);
   }
}

//字典的遍历
-(void)iteratorDict3:(NSDictionary *)dict
{
    NSEnumerator *nse = [dict keyEnumerator];
    id key;
    while(key=[nse nextObject])
    {
       id object = [dict objectForKey:key];
       NSLog(@"[%@:%@]\n",key,object);
    }
    
}

@end

//
//  DemoNSDictionary.m
//  DemoNSDictionary
//
//  Created by Wenle Zhou on 14-6-13.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "DemoNSDictionary.h"

@implementation DemoNSDictionary

-(id) initWithDictonary:(NSDictionary *)demoDict
{
    if(!(self = [super init]))
    {
        return nil;
    }
    
    // Initialize members
    //创建一个字典,并立即初始化他
    demoDict = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
    return self;
}


-(void)showNSDictionary:(NSDictionary *)demoDict_2
{
    NSMutableString *result = [NSMutableString string];
    
    for (NSUInteger i = 0 ; i < [demoDict_2 count];i++)
    {
        [result appendFormat:@"%@",demoDict_2];
    }
    
    NSLog(result);
}

@end

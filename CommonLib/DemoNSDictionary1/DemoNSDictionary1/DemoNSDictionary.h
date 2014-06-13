//
//  DemoNSDictionary.h
//  DemoNSDictionary
//
//  Created by Wenle Zhou on 14-6-13.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoNSDictionary : NSObject
{
    //创建一个空的字典
    NSDictionary *demoDict1;
    
    //创建一个字典,并立即初始化他
    NSDictionary *demoDict2;
}

- (void)showNSDictionary:(NSDictionary *)demoDict_2;
//- (void)setUp;
//- (void)tearDown;


@end

//
//  DemoNSDictionary.h
//  DemoNSDictionary
//
//  Created by Wenle Zhou on 14-6-13.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoNSDictionary : NSObject
- (void)showNSDictionary:(NSDictionary *)dict;
- (void)setDemoDict1;
- (void)setDemoDict2:(NSDictionary *)dict;
- (void)setDemoDict3:(NSString *)str;
- (NSMutableString *)formatNSDictionary:(NSDictionary *)dict;
-(NSDictionary *)dictContentCopy:(NSDictionary *)destDict dictName2:(NSDictionary *)srcDict;

-(NSInteger )getDictCount:(NSDictionary *)dict;
-(NSString *)getDictValueByKey:(NSDictionary *)dict keyName:(NSString *)key;
-(NSArray *)getDictAllKey:(NSDictionary *)dict;

-(void)iteratorDict1:(NSDictionary *)dict;
-(void)iteratorDict2:(NSDictionary *)dict;
-(void)iteratorDict3:(NSDictionary *)dict;

@end

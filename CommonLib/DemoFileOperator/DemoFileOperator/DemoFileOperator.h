//
//  DemoFileOperator.h
//  DemoFileOperator
//
//  Created by Wenle Zhou on 14-6-15.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileReader.h"

@interface DemoFileOperator : NSObject

-(NSString*)readFile:(NSString *)filePath;
-(void)setFilePath:(NSString *)filePath1;
-(NSString *)filePath;
-(void)readFileByLine:(NSString *)filePath;
@end

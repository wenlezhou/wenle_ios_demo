//
//  DemoFileOperator.m
//  DemoFileOperator
//
//  Created by Wenle Zhou on 14-6-15.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "DemoFileOperator.h"

@implementation DemoFileOperator
{
    NSString * filePath;
}

-(void)setFilePath:(NSString *)filePath1
{
    filePath = filePath1;
}

-(NSString *)filePath
{
    return filePath;
}

-(NSString*)readFile:(NSString *)filePath
{
    //读取UTF8的中文文件
    NSLog(@"fread from file[%@]",filePath);
    NSFileHandle* aHandle = [NSFileHandle fileHandleForReadingFromURL:filePath  error:nil];
    NSData* fileContents = nil;
    //[fileContents dataUsingEncoding:NSUTF8StringEncoding];
    
    if (aHandle)
        fileContents = [aHandle readDataToEndOfFile ];
    
    NSString *string = [NSString  stringWithUTF8String:[fileContents bytes]];
    NSLog(string);
    
    return fileContents;
}


-(void)readFileByLine:(NSString *)filePath;
{
    NSLog(@"File: %@", filePath); /* DEBUG LOG */
    int lineCount = 0;
    FileReader* fileReader = [[FileReader alloc] initWithFilePath:filePath];
    if (!fileReader) {
            
        }
    else
    {
        NSString* line = nil;
        while ((line = [fileReader readLine])) {
                lineCount++;
                NSLog(@"%3.d: %@", lineCount, line);
        }
     }
}


@end

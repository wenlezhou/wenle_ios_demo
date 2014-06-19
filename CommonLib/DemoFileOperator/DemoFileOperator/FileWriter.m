//
//  FileWriter.m
//  DemoFileOperator
//
//  Created by Wenle Zhou on 14-6-17.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "FileWriter.h"

@implementation FileWriter

//- (void) dealloc{
//    
//    [m_fileHandler release ],m_fileHandler = nil;
//    [super dealloc];
//}
//
//-(id)initWithFilePath:(NSString *)filePath
//{
//    self = [super init];
//    if (self !=nil)
//    {
//        if (!filePath || [[filePath length] <=0) {
//            return nil;
//        }
//        
//        m_fileHandler = [[NSFileHandle fileHandleForReadingAtPath:filePaht] retain];
//        
//        if(m_fileHandler == nil)
//                          {
//                              return nil;
//                          }
//        m_filePath = filePath;
//                          
//    }
//                          
//    
//}
//                          
//-(void)writeFile:(NSString *)fileContens
//{
//    NSData *da = [[NSData alloc]init];
//    NSString *str = @"这个是要写到文件里去的东东";
//    da = [str dataUsingEncoding:NSUTF8StringEncoding];
//    [m_fileHandler writeData:da];
//    
//}
//                          
//
@end

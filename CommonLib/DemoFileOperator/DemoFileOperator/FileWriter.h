//
//  FileWriter.h
//  DemoFileOperator
//
//  Created by Wenle Zhou on 14-6-17.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileWriter : NSObject
{
    NSString * m_filePath ;
    NSFileHandle * m_fileHandler ;
}

- (id) initWithFilePath:(NSString*)filePath;
- (void) writeFile:(NSString *)fileContens;

@end

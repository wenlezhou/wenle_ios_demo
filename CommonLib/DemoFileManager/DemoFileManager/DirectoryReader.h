//
//  DirectoryReader.h
//  DemoFileManager
//
//  Created by Wenle Zhou on 14-6-21.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DirectoryReader : NSObject {
    
	NSString*	m_path;		/**文件目录路劲. */
}

- (id)initWithPath:(NSString*)path; //初始化函数
- (BOOL)readDirectory:(NSArray**)files;

@end

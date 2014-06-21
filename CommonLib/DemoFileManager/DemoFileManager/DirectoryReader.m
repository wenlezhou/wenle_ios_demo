//
//  DirectoryReader.m
//  DemoFileManager
//
//  Created by Wenle Zhou on 14-6-21.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "DirectoryReader.h"

@implementation DirectoryReader

/**
 初始化 directory reader.
 @param path :目录路径.
 @return 初始化后的 DirectoryReader 对象 或者 nil.
 */
- (id)initWithPath:(NSString*)path {
    
	self = [super init];
	if (self != nil) {
		if (!path || [path length] <= 0) {
			return nil;
		}
        
		NSMutableString* mutablePath = [NSMutableString stringWithString:path];
		[mutablePath replaceOccurrencesOfString:@"/" withString:@"" options:NSBackwardsSearch range:NSMakeRange([path length] - 1, 1)];
		m_path = mutablePath;
	}
	return self;
}

/**
 读取目录里的内容
 @param 要读取的目录.
 @returns 如果读取成功则返回YES,否则返回NO.
 */
- (BOOL)readDirectory:(NSArray**)files {
    
	BOOL success = false;
	
	NSArray* fileNames = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:m_path error:nil];
	
	if (!fileNames || [fileNames count] <= 0) {
		return success;
	}
	
	NSMutableArray* fullNames = [NSMutableArray arrayWithCapacity:[fileNames count]];
	for (NSString* fileName in fileNames) {
		NSString* fullPath = [m_path stringByAppendingString:[NSString stringWithFormat:@"/%@", fileName]];
		[fullNames addObject:fullPath];
	}
	
	if (fullNames && [fullNames count] > 0 && files) {
		*files = fullNames;
		success = YES;
	}
	return success;
}
@end


//
//  main.m
//  DemoFileOperator
//
//  Created by Wenle Zhou on 14-6-15.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoFileOperator.h"

@interface TestClass : NSObject

@end

@implementation TestClass

-(void) test_fileRead
{
    
    @autoreleasepool {
        DemoFileOperator *dfo = [[DemoFileOperator alloc]init];
        [dfo setFilePath:@"/Users/wenlezhou/wenle_ios_demo/CommonLib/DemoFileOperator/resourse/QQ2014-06-04.log"];
        [dfo readFile:[dfo filePath]];
    }
    
}

-(void) test_fileReadLine
{
    
    @autoreleasepool {
        DemoFileOperator *dfo = [[DemoFileOperator alloc]init];
        [dfo setFilePath:@"/Users/wenlezhou/wenle_ios_demo/CommonLib/DemoFileOperator/resourse/QQ2014-06-04.log"];
        [dfo readFileByLine:[dfo filePath]];
    }
    
}
-(void) test_writeFile
{
    
    @autoreleasepool {
        DemoFileOperator *dfo = [[DemoFileOperator alloc]init];
        [dfo setFilePath:@"/Users/wenlezhou/wenle_ios_demo/CommonLib/DemoFileOperator/resourse/File.strings"];
        [dfo writeFile:[dfo filePath] fileContents:@"hello world"];
    }
    
}



@end



int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        TestClass *tc = [[TestClass alloc]init  ];
//        [tc test_fileRead];
        [tc test_writeFile];
    }
    return 0;
}


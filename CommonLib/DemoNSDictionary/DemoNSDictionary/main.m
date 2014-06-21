//
//  main.m
//  DemoNSDictionary1
//
//  Created by Wenle Zhou on 14-6-13.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoNSDictionary.h"

@interface TestClass : NSObject

@end

@implementation TestClass

-(void) test_setDemoDict1
{
    
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        [dnsd setDemoDict1];
    }
    
}

-(void) test_setDemoDict2
{
    
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        [dnsd setDemoDict2:[NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"key1",@"value3",@"key3", nil]];
    }
    
}

-(void) test_setDemoDict3
{
    
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        //获取应用程序根目录
        NSString *path = NSHomeDirectory();
        NSString *str =  @"/wenle_ios_demo/CommonLib/DemoNSDictionary/resource/12.plist";
        path = [NSString stringWithFormat:@"%@%@",path,str];
        
        [dnsd setDemoDict3:path];
    }
    
}

-(void) test_showNSDictionary
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        [dnsd showNSDictionary:[NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"key1",@"value4",@"key4", nil]];
        
    }
}

-(void) test_dictContentCopy
{   //此用例可以看到引用COPY与值COPY的区别
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        
        NSMutableDictionary* demoDict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
        
        NSMutableDictionary* demoDict2;
        NSMutableDictionary* demoDict3;
        
        demoDict2 = [dnsd dictContentCopy:demoDict2 dictName2:demoDict1];
        demoDict3 = demoDict1;
         //向字典中添加新的velue和key
        [demoDict1 setValue:@"value4" forKey:@"key4"];
        
        NSLog(@"Compare demoDict value");
        NSLog([dnsd formatNSDictionary:demoDict1]);
        NSLog([dnsd formatNSDictionary:demoDict2]);
        NSLog([dnsd formatNSDictionary:demoDict3]);
        
    }
}

-(void) test_getDictCount
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        NSMutableDictionary* demoDict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
        
        NSString *str1 =@"这个字典里有";
        NSString *str2 =@"个元素";
        NSInteger int1 = [dnsd getDictCount:demoDict1];
        
        NSLog([NSString stringWithFormat:@"%@%ld%@",str1,(long)int1,str2]);
        
    }
    
}

-(void) test_getDictValueByKey
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        NSMutableDictionary* demoDict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
        
        NSMutableString *str1 =[NSMutableString stringWithCapacity:100];
        [str1 appendString:@"以"];
        [str1 appendString:@"key2"];
        [str1 appendString:@"为键值取出在字典["];
        [str1 appendString:[NSString stringWithFormat:@"%@",demoDict1]];
        [str1 appendString:@"]"];
        [str1 appendString:@"对应的值为["];
        [str1 appendString:[dnsd getDictValueByKey: demoDict1 keyName:@"key2"]];
        [str1 appendString:@"]"];
        NSLog(str1);
        
    }
    
}

-(void) test_getDictAllKey
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        NSMutableDictionary* demoDict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1",
                                          @"value2", @"key2",
                                          @"value3", @"key3",
                                          @"value4", @"key4",
                                          @"value5", @"key5",
                                          @"value6", @"key6",
                                          @"value7", @"key7",
                                          @"value8", @"key8",
                                          @"value9", @"key9",
                                          @"value10", @"key10",
                                          @"value11", @"key11",
                                          @"value12", @"key12",
                                          @"value13", @"key13",
                                          @"value14", @"key14",
                                          @"value15", @"key15",
                                          @"value16", @"key16",
                                          @"value17", @"key17",
                                          @"value18", @"key18",
                                          @"value19", @"key19",
                                          @"value20", @"key20",nil];
        
        NSArray *arry = [dnsd getDictAllKey:demoDict1];
        
        
        NSMutableString *str1 =[NSMutableString stringWithCapacity:100];
        [str1 appendString:@"这个字典["];
        [str1 appendString:[NSString stringWithFormat:@"%@",demoDict1]];
        [str1 appendString:@"]"];
        [str1 appendString:@"里的所有的key分别为["];
        [str1 appendString:[NSString stringWithFormat:@"%@",arry]];
        [str1 appendString:@"]"];
        NSLog(str1);
        
        
        
    }
    
}

-(void) test_iteratorDict1
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        NSMutableDictionary* demoDict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1",
                                          @"value2", @"key2",
                                          @"value3", @"key3",
                                          @"value4", @"key4",
                                          @"value5", @"key5",
                                          @"value6", @"key6",
                                          @"value7", @"key7",
                                          @"value8", @"key8",
                                          @"value9", @"key9",
                                          @"value10", @"key10",
                                          @"value11", @"key11",
                                          @"value12", @"key12",
                                          @"value13", @"key13",
                                          @"value14", @"key14",
                                          @"value15", @"key15",
                                          @"value16", @"key16",
                                          @"value17", @"key17",
                                          @"value18", @"key18",
                                          @"value19", @"key19",
                                          @"value20", @"key20",nil];
        
        
        NSMutableString *str1 =[NSMutableString stringWithCapacity:100];
        [str1 appendString:@"这个字典["];
        [str1 appendString:[NSString stringWithFormat:@"%@",demoDict1]];
        [str1 appendString:@"]"];
        [str1 appendString:@"遍历出来的结果是：["];
        NSLog(str1);
        
        [dnsd iteratorDict1:demoDict1];
        
        NSLog(@"]");
        
    }
    
}
 
-(void) test_iteratorDict2
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        NSMutableDictionary* demoDict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1",
                                          @"value2", @"key2",
                                          @"value3", @"key3",
                                          @"value4", @"key4",
                                          @"value5", @"key5",
                                          @"value6", @"key6",
                                          @"value7", @"key7",
                                          @"value8", @"key8",
                                          @"value9", @"key9",
                                          @"value10", @"key10",
                                          @"value11", @"key11",
                                          @"value12", @"key12",
                                          @"value13", @"key13",
                                          @"value14", @"key14",
                                          @"value15", @"key15",
                                          @"value16", @"key16",
                                          @"value17", @"key17",
                                          @"value18", @"key18",
                                          @"value19", @"key19",
                                          @"value20", @"key20",nil];
        
        
        NSMutableString *str1 =[NSMutableString stringWithCapacity:100];
        [str1 appendString:@"这个字典["];
        [str1 appendString:[NSString stringWithFormat:@"%@",demoDict1]];
        [str1 appendString:@"]"];
        [str1 appendString:@"遍历出来的结果是：["];
        NSLog(str1);
        
        [dnsd iteratorDict2:demoDict1];
        
        NSLog(@"]");
        
    }
    
}

-(void) test_iteratorDict3
{
    @autoreleasepool {
        DemoNSDictionary *dnsd = [[DemoNSDictionary  alloc]init];
        NSMutableDictionary* demoDict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1",
                                          @"value2", @"key2",
                                          @"value3", @"key3",
                                          @"value4", @"key4",
                                          @"value5", @"key5",
                                          @"value6", @"key6",
                                          @"value7", @"key7",
                                          @"value8", @"key8",
                                          @"value9", @"key9",
                                          @"value10", @"key10",
                                          @"value11", @"key11",
                                          @"value12", @"key12",
                                          @"value13", @"key13",
                                          @"value14", @"key14",
                                          @"value15", @"key15",
                                          @"value16", @"key16",
                                          @"value17", @"key17",
                                          @"value18", @"key18",
                                          @"value19", @"key19",
                                          @"value20", @"key20",nil];
        
        
        NSMutableString *str1 =[NSMutableString stringWithCapacity:100];
        [str1 appendString:@"这个字典["];
        [str1 appendString:[NSString stringWithFormat:@"%@",demoDict1]];
        [str1 appendString:@"]"];
        [str1 appendString:@"遍历出来的结果是：["];
        NSLog(str1);
        
        [dnsd iteratorDict3:demoDict1];
        
        NSLog(@"]");
        
    }
    
}



@end

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
    
        TestClass *tc = [[TestClass alloc]init  ];
//        [tc test_setDemoDict1];
//        [tc test_setDemoDict2];
//        [tc test_showNSDictionary];
//        [tc test_setDemoDict3];
//        [tc test_dictContentCopy];
//        [tc test_getDictCount];
//        [tc test_getDictValueByKey];
//        [tc test_getDictAllKey];
//        [tc test_iteratorDict1];
//        [tc test_iteratorDict2];
        [tc test_iteratorDict3];
        
        
    }
    return 0;
}


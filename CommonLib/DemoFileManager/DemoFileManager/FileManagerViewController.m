//
//  FileManagerViewController.m
//  DemoFileManager
//
//  Created by Wenle Zhou on 14-6-21.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "FileManagerViewController.h"
#import "DirectoryReader.h"

@interface FileManagerViewController ()

@end

@implementation FileManagerViewController
{
    NSArray *m_directoryList;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //获取应用程序根目录
    NSString *path = NSHomeDirectory();
    
    NSArray *directoryList = nil;
    DirectoryReader *directoryReader = [[DirectoryReader alloc]initWithPath:path];
    [directoryReader readDirectory:&directoryList];
    NSLog(@"%@",directoryList); //for debug
    
    m_directoryList = directoryList;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [m_directoryList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    for(int i = 0 ;i< [m_directoryList count];i ++)
    {
        if (indexPath.row == i) {
             label.text = [self cutDirectoryString :[m_directoryList objectAtIndex:i ]];
            
        }
  
    }
    return cell;
}

/**
 字符串处理裁剪，把
        "/Users/wenlezhou/Library/Application Support/iPhone Simulator/7.1/Applications/AAE6AC4C-2E88-4CBD-B2A3-ACDAC904FD25/tmp”
 处理成
 "tmp"
 @param 输入字符串.
 @returns 返回处理后的字符串.
 */
-(NSString *) cutDirectoryString:(NSString *)directoryStr
{
    //判断输入参数
    if (!directoryStr || [directoryStr length] == 0) {
          return directoryStr;
      }
   
    //反向查找字符串里是否有”/"
    NSRange range = [directoryStr rangeOfString:@"/" options:NSBackwardsSearch];
    NSString *string2 = nil;
    int location = range.location;
    
    if (location < 0 )
     {
         return directoryStr;
     }
    else{
         string2 = [directoryStr substringFromIndex:location+1 ];//多截取一位，把“/”给去掉
    }
    return string2;
}

@end
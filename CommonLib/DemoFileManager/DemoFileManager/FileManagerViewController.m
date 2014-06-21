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
            label.text =[m_directoryList objectAtIndex:i ];
        }
  
    }
    return cell;
}

@end
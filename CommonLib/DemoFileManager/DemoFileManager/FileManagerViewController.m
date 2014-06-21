//
//  FileManagerViewController.m
//  DemoFileManager
//
//  Created by Wenle Zhou on 14-6-21.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "FileManagerViewController.h"

@interface FileManagerViewController ()

@end

@implementation FileManagerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    if (indexPath.row == 0) { label.text = @"文件夹1";
    } else if (indexPath.row == 1) { label.text = @"文件夹2";
    } else if (indexPath.row == 2) { label.text = @"文件名3";
    } else if (indexPath.row == 3) { label.text = @"文件名4";
    } else if (indexPath.row == 4) { label.text = @"文件名5";
    }
    return cell; }

@end

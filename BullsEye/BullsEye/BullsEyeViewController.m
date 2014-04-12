//
//  BullsEyeViewController.m
//  BullsEye
//
//  Created by Wenle Zhou on 14-4-12.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "BullsEyeViewController.h"

@interface BullsEyeViewController ()

@end

@implementation BullsEyeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)showAlert
{
   UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Hello world"
                              message:@"THis is my first app!"
                              delegate:nil
                              cancelButtonTitle:@"Awesome"
                              otherButtonTitles:nil
                              ];
                             [alertView show];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

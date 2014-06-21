//
//  DemoDrawViewViewController.m
//  DemoDrawView
//
//  Created by Wenle Zhou on 14-6-19.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "DemoDrawViewViewController.h"
#import "DrawerView.h"

@interface DemoDrawViewViewController ()

@end

@implementation DemoDrawViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIView *uiview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 380)];
    UIImage *image = [UIImage imageNamed:@"test.jpg"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    imageView.center = uiview.center;
    [uiview addSubview:imageView];
    
    DrawerView *testView = [[DrawerView alloc]initWithView:uiview parentView:self.view];
    
    [self.view addSubview:testView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

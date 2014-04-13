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
{
    int _currentValue;
    int _targetValue;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self startNewRound];
    
    
}

-(IBAction)showAlert
{
    NSString *message = [NSString stringWithFormat:@"The value of the slider is :%d\nThe target value is :%d",_currentValue,_targetValue];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Hello world"
                              message:message
                              delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil
                              ];
    [alertView show];
    [self startNewRound];
    
}

-(IBAction)sliderMoved:(UISlider *)slider
{
    NSLog(@"The value of the slider is now: %f",slider.value);
    _currentValue = lroundf(slider.value);
    
    
}

-(void)startNewRound
{
    _targetValue  =  1 + arc4random_uniform(100);
    //_currentValue = 50;
    self.slider.value = _currentValue;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

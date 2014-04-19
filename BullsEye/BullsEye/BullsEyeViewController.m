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
    int _score;
    int _round;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self startNewGame];
    [self updateLabels ];
    
}

-(IBAction)showAlert
{
    int difference = abs(_targetValue - _currentValue);
    int points = 100 - difference;
    _score = _score + points;
    
    NSString *title ;
    if (difference == 0 ){
        title = @"Perfect!";
    }else if (difference <5){
        title = @"You almost had it!";
    }else if (difference <10){
        title = @"Pretty good!";
    }else{
        title = @"Not even close...";
    }
    
    
    NSString *message = [NSString stringWithFormat:@"You scored %d points",points];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:title
                              message:message
                              delegate:self
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil
                              ];
    [alertView show];
    //[self startNewRound];
    //[self updateLabels ];
    
}

-(IBAction)sliderMoved:(UISlider *)slider
{
    NSLog(@"The value of the slider is now: %f",slider.value);
    _currentValue = lroundf(slider.value);
    
    
}

-(void)updateLabels
{
    self.targetLable.text = [NSString stringWithFormat:@"%d",_targetValue];
    self.scoreLable.text = [NSString stringWithFormat:@"%d",_score];
    self.roundLable.text = [NSString stringWithFormat:@"%d",_round];
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    [self startNewRound];
    [self updateLabels];
    
}

-(void)startNewRound
{
    _targetValue  =  1 + arc4random_uniform(100);
    _round = 1 + _round ;
    self.slider.value = _currentValue;
    
}

-(void)startOver
{
    [self startNewGame];
    [self updateLabels];
}

-(void)startNewGame
{
    _score = 0;
    _round = 0;
    [self startNewRound];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

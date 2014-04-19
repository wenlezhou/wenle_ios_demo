//
//  BullsEyeViewController.h
//  BullsEye
//
//  Created by Wenle Zhou on 14-4-12.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BullsEyeViewController :UIViewController <UIAlertViewDelegate>

@property(nonatomic,weak)IBOutlet UISlider *slider;
@property(nonatomic,weak)IBOutlet UILabel *targetLable;
@property(nonatomic,weak)IBOutlet UILabel *roundLable;
@property(nonatomic,weak)IBOutlet UILabel *scoreLable;


-(IBAction)startOver;
-(IBAction)startNewRound;
-(IBAction)startNewGame;
-(IBAction)showAlert;
-(IBAction)sliderMoved:(UISlider *)slider;

@end

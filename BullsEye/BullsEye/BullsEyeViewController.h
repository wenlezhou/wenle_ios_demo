//
//  BullsEyeViewController.h
//  BullsEye
//
//  Created by Wenle Zhou on 14-4-12.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BullsEyeViewController : UIViewController

@property(nonatomic,weak)IBOutlet UISlider *slider;

-(IBAction)startNewRound;
-(IBAction)showAlert;
-(IBAction)sliderMoved:(UISlider *)slider;

@end

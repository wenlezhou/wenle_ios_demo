//
//  AddItemViewController.h
//  Checklists
//
//  Created by Wenle Zhou on 14-6-8.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChecklistItem.h"

@class AddItemViewController;
@class ChecklistItem;

@protocol AddItemViewControllerDelegate <NSObject>

-(void)addItemViewControllerDidCancel:(AddItemViewController *)controller;
-(void)addItemViewController:(AddItemViewController *)controller
         didFinishAddingItem:(ChecklistItem *)item;

@end

@interface AddItemViewController : UITableViewController <UITextFieldDelegate>

-(IBAction)cancel;
-(IBAction)done;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (nonatomic, weak) id <AddItemViewControllerDelegate> delegate;

@end

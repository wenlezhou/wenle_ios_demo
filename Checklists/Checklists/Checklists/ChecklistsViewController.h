//
//  ChecklistsViewController.h
//  Checklists
//
//  Created by Wenle Zhou on 14-5-10.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddItemViewController.h"

@interface ChecklistsViewController : UITableViewController <AddItemViewControllerDelegate>

-(void)toggleChecked;
-(IBAction)addItem;

@end


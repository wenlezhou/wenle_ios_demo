//
//  ChecklistItem.m
//  Checklists
//
//  Created by Wenle Zhou on 14-6-7.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem

-(void)toggleChecked
{
    self.checked = !self.checked;
}
@end

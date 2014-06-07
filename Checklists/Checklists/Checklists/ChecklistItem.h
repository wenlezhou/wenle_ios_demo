//
//  ChecklistItem.h
//  Checklists
//
//  Created by Wenle Zhou on 14-6-7.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject

@property (nonatomic,copy)NSString *text;
@property(nonatomic,assign)BOOL checked;


-(void)toggleChecked;

@end

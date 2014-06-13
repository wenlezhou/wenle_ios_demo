//
//  AddItemViewController.m
//  Checklists
//
//  Created by Wenle Zhou on 14-6-8.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "AddItemViewController.h"

@interface AddItemViewController ()

@end

@implementation AddItemViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(IBAction)cancel
{
//    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    [self.delegate addItemViewControllerDidCancel:self];
    
}
- (IBAction)done {
    NSLog(@"Contents of the text field: %@",self.textField.text);
//    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    ChecklistItem *item = [[ChecklistItem alloc]init];
    item.text = self.textField.text;
    item.checked = NO;
    
    [self.delegate addItemViewController:self didFinishAddingItem:item];
}
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.textField becomeFirstResponder];
}

-(BOOL)textField:(UITextField *)theTextField
        shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    NSString *newText = [theTextField.text stringByReplacingCharactersInRange:range withString:string];
    
    
    self.doneBarButton.enabled = ([newText length] > 0);
    
//    if ([newText length] > 0 )  {
//        self.doneBarButton.enabled = YES;
//    }else{
//        self.doneBarButton.enabled  = NO;
//    }
    
    return YES;
    
}

@end

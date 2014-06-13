//
//  ChecklistsViewController.m
//  Checklists
//
//  Created by Wenle Zhou on 14-5-10.
//  Copyright (c) 2014年 Wenle Zhou. All rights reserved.
//

#import "ChecklistsViewController.h"
#import "ChecklistItem.h"

@interface ChecklistsViewController ()

@end


@implementation ChecklistsViewController
{
//    ChecklistItem *_row0item;
//    ChecklistItem *_row1item;
//    ChecklistItem *_row2item;
//    ChecklistItem *_row3item;
//    ChecklistItem *_row4item;
//    
    NSMutableArray *_items ;
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    _row0item = [[ChecklistItem alloc] init];
//    _row0item.text = @"Walk the dog";
//    _row0item.checked = NO;
// 
//    
//    _row0item = [[ChecklistItem alloc] init];
//    _row0item.text = @"Brush my teeth";
//    _row0item.checked = YES;
//    
//    _row0item = [[ChecklistItem alloc] init];
//    _row0item.text = @"Learn iOS development";
//    _row0item.checked = YES;
//    
//    _row0item = [[ChecklistItem alloc] init];
//    _row0item.text = @"Soccer proctice";
//    _row0item.checked = YES;
//    
//    _row0item = [[ChecklistItem alloc] init];
//    _row0item.text = @"Eat ice cream";
//    _row0item.checked = YES;
//    
    _items = [[NSMutableArray alloc]initWithCapacity:20];
    
    ChecklistItem *item;
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Walk the dog";
    item.checked = YES;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Brush my teeth";
    item.checked = YES;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Learn iOS development";
    item.checked = YES;
    [_items addObject:item];
    
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Soccer proctice";
    item.checked = NO;
    [_items addObject:item];
    
    item = [[ChecklistItem alloc] init];
    item.text = @"Eat ice cream";
    item.checked = NO;
    [_items addObject:item];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [_items count];
}

- (void)configureCheckmarkForCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    
    ChecklistItem *item = _items[indexPath.row];
    
    if (item.checked) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    ChecklistItem *item = _items[indexPath.row];
    
    
    [self configureTextForCell:cell withChecklistItem:item];
    [self configureCheckmarkForCell:cell withChecklistItem:item];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    ChecklistItem *item = _items[indexPath.row];
    [item toggleChecked];
    
    [self configureCheckmarkForCell:cell withChecklistItem:item ];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

-(void)configureCheckmarkForCell:(UITableViewCell *)cell withChecklistItem:(ChecklistItem *)item
{
    if(item.checked){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
}

-(void)configureTextForCell:(UITableViewCell *)cell withChecklistItem:(ChecklistItem *)item
{
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    label.text = item.text;
}

-(IBAction)addItem
{
    NSInteger newRowIndex = [_items count];
    
    ChecklistItem *item = [[ChecklistItem alloc]init ];
    item.text = @"I am a new row";
    item.checked = NO;
    [_items addObject:item];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:newRowIndex inSection:0];
    NSArray *indexPaths = @[indexPath];
   
    [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
    
}

-(void)tableView:(UITableView *)tableView
    commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
    forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_items removeObjectAtIndex:indexPath.row]  ;
    
    NSArray *indexPaths = @[indexPath];
    [tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
    
    
}

-(void)addItemViewControllerDidCancel:(AddItemViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)addItemViewController:(AddItemViewController *)controller didFinishAddingItem:(ChecklistItem *)item
{
    [self dismissViewControllerAnimated:YES completion:nil];
    NSInteger newRowIndex = [_items count];
    [_items addObject:item];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:newRowIndex inSection:0];
    NSArray *indexPaths = @[indexPath]; [self.tableView insertRowsAtIndexPaths:indexPaths
                                                              withRowAnimation:UITableViewRowAnimationAutomatic];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id) sender
{
    if ([segue.identifier isEqualToString:@"AddItem"])
    {
        //1
        UINavigationController *navigationController =
        segue.destinationViewController ;
        
        //2
        AddItemViewController *controller = (AddItemViewController *)
        navigationController.topViewController;
        
        //3
        controller.delegate = self;
    }
    
}

@end

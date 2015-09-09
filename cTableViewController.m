//
//  cTableViewController.m
//  TableView
//
//  Created by yishain on 9/6/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "cTableViewController.h"
#import "cTableViewCell.h"

@interface cTableViewController ()
{
    NSArray *roleArray;
    NSArray *monsterArray;
    NSArray *item;
    NSMutableArray *heroicaArray;

}
@end

@implementation cTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"test");
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Regist cTableCell ReuseIdentifier to cTableView
    [tableView registerClass:cTableViewCell.self forCellReuseIdentifier:@"Cell"];

    
    cTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    [cell awakeFromNib];

    NSLog(@"text = %@",monsterArray);
    
    cell.cLable.text = [[heroicaArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
  //    cell.cImageView.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"image" ofType:@"png" inDirectory:nil]];
//    
    return cell;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    roleArray = [[NSArray alloc] initWithObjects:@"野蠻人", @"法師", @"弓箭手", @"盜賊", @"德魯伊", @"騎士", nil];
    monsterArray = [[NSArray alloc] initWithObjects:@"哥布林戰士", @"哥布林護衛", @"哥布林軍官", @"哥布林王", @"黑暗德魯伊", @"狼人", @"傀儡護衛", @"傀儡領主", @"蜘蛛", @"蝙蝠", nil];
    item = [[NSArray alloc] initWithObjects:@"藥水", @"小刀", @"寶劍", @"符咒", @"裝甲", @"小槍", nil];
    
    heroicaArray = [[NSMutableArray alloc] initWithObjects:roleArray, monsterArray, item,nil];
    
    NSLog(@"count %d", [heroicaArray count]);
    
    // Return the number of sections.
    return [heroicaArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.
    return [[heroicaArray objectAtIndex:section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return @"英雄角色";
            break;
            
        case 1:
            return @"怪物角色";
            break;
            
        case 2:
            return @"道具";
            break;
            
        default:
            return @"";
            break;
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

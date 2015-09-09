//
//  NextViewController.m
//  TableView
//
//  Created by yishain on 9/9/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController () <UITableViewDelegate,UITableViewDataSource>
{
    NSArray *arr;
    NSArray *arr2;
    NSArray *arr3;
    NSMutableArray *MutableArr;
}
@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nextTableView.dataSource = self;
    self.nextTableView.delegate = self;
    
    arr = [[NSArray alloc]initWithObjects:@"冬瓜",@"小黃瓜",@"菜瓜",@"南瓜",@"西瓜", nil];
    arr2 = [[NSArray alloc]initWithObjects:@"牛排",@"豬排",@"韓式燒肉",@"美式燒烤",@"壽喜燒", nil];
    arr3 = [[NSArray alloc]initWithObjects:@"泰式奶茶",@"烏龍綠茶",@"珍珠紅茶",@"可樂",@"木瓜牛奶",@"草莓汁", nil];
    MutableArr = [[NSMutableArray alloc]initWithObjects:arr,arr2,arr3, nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIndentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIndentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIndentifier];
    }
    cell.textLabel.text = [[MutableArr objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    
    // Return the number of sections.
    return  [MutableArr count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.
    return [[MutableArr objectAtIndex:section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
   }

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

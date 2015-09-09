//
//  ViewController.m
//  TableView
//
//  Created by yishain on 9/6/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"
#import "cTableViewController.h"
@interface ViewController ()

@property UITableView *cTableView;
@property  cTableViewController *cTableViewController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.cTableView];
    
    self.cTableViewController = [cTableViewController new];
    
    //set Delegate
    self.cTableView.delegate = self.cTableViewController;
    self.cTableView.dataSource = self.cTableViewController;
    
    [self.view addSubview:self.cTableViewController.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

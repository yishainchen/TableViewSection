//
//  SecondViewController.h
//  TableView
//
//  Created by yishain on 9/8/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *secondTableView;
- (IBAction)pressBtn:(id)sender;
//@property (weak, nonatomic) IBOutlet UIView *customView;
- (IBAction)oneBtn:(id)sender;
- (IBAction)twoBtn:(id)sender;
- (IBAction)threeBtn:(id)sender;
- (IBAction)fourBtn:(id)sender;
- (IBAction)fiveBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *oneBtn;
@end

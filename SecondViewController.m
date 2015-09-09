//
//  SecondViewController.m
//  TableView
//
//  Created by yishain on 9/8/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *listOne;
    NSArray *listTwo;
    NSArray *listThree;
    NSMutableArray *list;
    NSString *str;
    NSString *str1;
    NSString *str2;
//    NSIndexPath *indexPath;
}
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    str = @"資優班";
    str1 = @"放牛班";
    str2 = @"師資";
    UIView *customView = [[[NSBundle mainBundle] loadNibNamed:@"segueControl" owner:self options:nil]objectAtIndex:0];;
    customView.frame = CGRectMake(500, 100, 200, 200);
    [self.view addSubview:customView];

    
    self.secondTableView.delegate = self;
    self.secondTableView.dataSource = self;
    listOne = [[NSArray alloc]initWithObjects:@"Eric",@"Sean",@"Tank",@"Evan", nil];
    listTwo = [[NSArray alloc]initWithObjects:@"Geoge",@"Win",@"Bruce",@"Hexter",@"Mike", nil];
    
    listThree = [[NSArray alloc]initWithObjects:@"Peter",@"Brain",@"iHower",@"Bernard",@"Hans", nil];
    list = [[NSMutableArray alloc]initWithObjects:listOne,listTwo,listThree, nil];
    
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
    cell.textLabel.text = [[list objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    // Return the number of sections.
    return [list count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.
    return [[list objectAtIndex:section] count];
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
        
            return str;
            break;
            
        case 1:
            return str1;
            break;

        case 2:
            return str2;
            break;
            
        default:
            return @"";
            break;
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pressBtn:(id)sender {
    
    UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"Second" bundle:nil];
   
    ViewController *test2obj = [secondStoryBoard instantiateViewControllerWithIdentifier:@"test2"];
    
    [self presentViewController:test2obj animated:YES completion:nil];
}
- (IBAction)oneBtn:(id)sender {
    str = @"IOS班";
    str1 = @"WEB班";
    str2 = @"師資陣容";
    listOne = [[NSArray alloc]initWithObjects:@"艾瑞克",@"尚恩",@"坦克",@"艾凡", nil];
    listTwo = [[NSArray alloc]initWithObjects:@"喬治",@"偉恩",@"布魯斯",@"黑絲特",@"麥可", nil];
    
    listThree = [[NSArray alloc]initWithObjects:@"彼得",@"布萊恩",@"哀浩厄",@"博南",@"漢斯", nil];
    list = [[NSMutableArray alloc]initWithObjects:listOne,listTwo,listThree, nil];
    [self.secondTableView reloadData];
}

- (IBAction)twoBtn:(id)sender {
    str = @"資優班";
    str1 = @"放牛班";
    str2 = @"師資";
    listOne = [[NSArray alloc]initWithObjects:@"Eric",@"Sean",@"Tank",@"Evan", nil];
    listTwo = [[NSArray alloc]initWithObjects:@"Geoge",@"Win",@"Bruce",@"Hexter",@"Mike", nil]; 
    listThree = [[NSArray alloc]initWithObjects:@"Peter",@"Brain",@"iHower",@"Bernard",@"Hans", nil];
    list = [[NSMutableArray alloc]initWithObjects:listOne,listTwo,listThree, nil];
   [self.secondTableView reloadData];
}

- (IBAction)threeBtn:(id)sender {
    str = @"IOS課程資訊";
    str1 = @"WEB班課程資訊";
    str2 = @"師資班表";
    listOne = [[NSArray alloc]initWithObjects:@"推播",@"代理人",@"Parse建置",@"CoreData", nil];
    listTwo = [[NSArray alloc]initWithObjects:@"後台",@"串接前台",@"部署",@"爬蟲",@"自我介紹", nil];
    
    listThree = [[NSArray alloc]initWithObjects:@"Peter",@"Brain",@"iHower",@"Bernard",@"Hans", nil];
    list = [[NSMutableArray alloc]initWithObjects:listOne,listTwo,listThree, nil];
    [self.secondTableView reloadData];

}

- (IBAction)fourBtn:(id)sender {
    str = @"IOS午餐便當";
    str1 = @"WEB班午餐便當";
    str2 = @"老師午餐便當";
    listOne = [[NSArray alloc]initWithObjects:@"牛排",@"魚翅",@"鮑魚",@"燕窩", nil];
    listTwo = [[NSArray alloc]initWithObjects:@"清粥",@"小菜",@"蝦米",@"便當",@"吃自己", nil];
    
    listThree = [[NSArray alloc]initWithObjects:@"滷肉",@"炒麵",@"咖啡",@"土",@"雞翅", nil];
    list = [[NSMutableArray alloc]initWithObjects:listOne,listTwo,listThree, nil];
    [self.secondTableView reloadData];
}

- (IBAction)fiveBtn:(id)sender {
    str = @"IOS班職缺";
    str1 = @"WEB班職缺";
    str2 = @"老師推薦";
    listOne = [[NSArray alloc]initWithObjects:@"IFIT",@"ICOOK",@"ICHEF",@"SUN J", nil];
    listTwo = [[NSArray alloc]initWithObjects:@"OURSKY",@"FB",@"GOOGLE",@"PARSE",@"WANWAN", nil];
    
    listThree = [[NSArray alloc]initWithObjects:@"ALPHACAMP",@"FB",@"INSTAGRAM",@"REGENT",@"CHOCOLAB", nil];
    list = [[NSMutableArray alloc]initWithObjects:listOne,listTwo,listThree, nil];
    [self.secondTableView reloadData];
}
@end

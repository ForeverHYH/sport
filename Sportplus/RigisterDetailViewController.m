//
//  RigisterDetailViewController.m
//  Sportplus
//
//  Created by Forever.H on 14/12/7.
//  Copyright (c) 2014年 JiaZai. All rights reserved.
//

#import "RigisterDetailViewController.h"

@interface RigisterDetailViewController ()

@end

@implementation RigisterDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    titleArray = [[NSMutableArray alloc] initWithObjects:@"水平/菜鸟 进阶 高手",@"个性标签/最多三个标签", nil];
    sportsArray = [[NSMutableArray alloc]init];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setBackgroundImage:[UIImage imageNamed:@"cancel"] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(back)
         forControlEvents:UIControlEventTouchUpInside];
    backButton.frame = CGRectMake(0, 0, 18, 18);
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithCustomView:backButton];
    [self.navigationItem setLeftBarButtonItem:backItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)back{
    NSLog(@"cancel");
    [self.navigationController popViewControllerAnimated:YES];
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UILabel *sectionTitle = [[UILabel alloc]init];
    sectionTitle.frame = CGRectMake(0, 5, 200, 22);
    sectionTitle.numberOfLines = 0;
    switch (section) {
        case 0:
            sectionTitle.text = [titleArray objectAtIndex:section];
            break;
        case 1:
            sectionTitle.text =  [titleArray objectAtIndex:section];
            break;
        default:
            break;
    }
    UIView *sectionView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 30)];
    [sectionView setBackgroundColor:[UIColor lightGrayColor]];
    [sectionView addSubview:sectionTitle];
    return sectionView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [titleArray count];//返回标题数组中元素的个数来确定分区的个数
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    switch (section) {
            
        case 0:
            
            return  3;
            
            break;
            
        case 1:
            
            return  1;
            
            break;
            
        default:
            
            return 0;  
            
            break;  
            
    }  
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger section = [indexPath section];
    if(section==0)
    {
        static NSString *levelCellIdentifier = @"levelCellIdentifier";
        levelTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:levelCellIdentifier];
        if (cell == nil) {
            //通过xib的名称加载自定义的cell
            cell = [[[NSBundle mainBundle] loadNibNamed:@"levelTableViewCell" owner:self options:nil] lastObject];
        }
        self.sectionTwo = NO;
        return cell;
    }
    else
    {
        static NSString *tagCellIdentifier = @"tagCellIdentifier";
        TagTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:tagCellIdentifier];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"TagTableViewCell" owner:self options:nil] lastObject];
        }
        self.sectionTwo = YES;
        return cell;
    }
    return  nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.sectionTwo==NO){
        return 80.0;
    }
    else{
        return 138;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
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

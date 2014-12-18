//
//  RigisterDetailViewController.h
//  Sportplus
//
//  Created by Forever.H on 14/12/7.
//  Copyright (c) 2014年 JiaZai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "levelTableViewCell.h"
#import "TagTableViewCell.h"
@interface RigisterDetailViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *titleArray;
    NSMutableArray *sportsArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property ( nonatomic) BOOL sectionTwo;

@end

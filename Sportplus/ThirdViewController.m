//
//  ThirdViewController.m
//  Sportplus
//
//  Created by humao on 14-12-3.
//  Copyright (c) 2014年 JiaZai. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)StoryBoardChange:(id)sender {
    NSLog(@"%@",[[[[UIApplication sharedApplication] delegate] window] rootViewController].description) ;
    NSLog(@"233") ;
    NSLog(@"StoryBoardChange") ;
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

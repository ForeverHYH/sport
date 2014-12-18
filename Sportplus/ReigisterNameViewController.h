//
//  ReigisterNameViewController.h
//  Sportplus
//
//  Created by Forever.H on 14/12/6.
//  Copyright (c) 2014年 JiaZai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReigisterNameViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *realName;
- (IBAction)maleButton:(id)sender;
- (IBAction)femaleButton:(id)sender;
- (IBAction)pingpongButton:(id)sender;
- (IBAction)tenniseButton:(id)sender;
- (IBAction)buildButton:(id)sender;
- (IBAction)runButton:(id)sender;
- (IBAction)badmintonButton:(id)sender;
- (IBAction)soccerButton:(id)sender;
- (IBAction)basketballButton:(id)sender;
@property(nonatomic) NSMutableArray *sportsArray;
@property(nonatomic) BOOL gender;
@property(nonatomic) BOOL pingpongSelected;
@property(nonatomic) BOOL tenniseSelected;
@property(nonatomic) BOOL buildSelected;
@property(nonatomic) BOOL badmintonSelected;
@property(nonatomic) BOOL basketballSelected;
@property(nonatomic) BOOL runSelected;
@property(nonatomic) BOOL soccerSelected;
@end

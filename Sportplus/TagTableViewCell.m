//
//  TagTableViewCell.m
//  Sportplus
//
//  Created by Forever.H on 14/12/7.
//  Copyright (c) 2014年 JiaZai. All rights reserved.
//

#import "TagTableViewCell.h"

@implementation TagTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)mengMZ:(id)sender {
    NSLog(@"萌妹子～");
}

- (IBAction)jiaoYK:(id)sender {
    NSLog(@"交友控～");
}

@end

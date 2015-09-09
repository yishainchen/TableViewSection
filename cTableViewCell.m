//
//  cTableViewCell.m
//  TableView
//
//  Created by yishain on 9/6/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "cTableViewCell.h"

@implementation cTableViewCell

- (void)awakeFromNib {
    // Initialization code
   
    if (!self.cLable) {
        self.cLable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width - 50, self.frame.size.height)];
        self.cLable.numberOfLines = 0;
        self.cLable.adjustsFontSizeToFitWidth = YES;
        self.cLable.backgroundColor = [UIColor clearColor];
        self.cLable.textAlignment = NSTextAlignmentCenter;
        
        [self addSubview:self.cLable];
    }
    
    if (!self.cImageView) {
        
        self.cImageView = [[UIImageView alloc]initWithFrame:CGRectMake(self.cLable.frame.size.width, 0, self.frame.size.height, self.frame.size.width)];
        
        [self addSubview:self.cImageView];
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

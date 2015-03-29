//
//  TableViewCell.m
//  DaZhongMessageCommentTour
//
//  Created by YLan on 15/3/28.
//  Copyright (c) 2015年 YLan. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    
    
}
+(TableViewCell *)cellWithTableView:(UITableView *)tableView{
    
    static NSString *ident = @"cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ident];
     if (!cell) {
        
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ident];
        
    }
     return cell;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

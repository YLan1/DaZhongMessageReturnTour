//
//  TableViewCell.h
//  DaZhongMessageCommentTour
//
//  Created by YLan on 15/3/28.
//  Copyright (c) 2015年 YLan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property(nonatomic, strong)UILabel *nameLabel;
@property(nonatomic, strong)UIImageView *leftView;
@property(nonatomic, strong)UILabel *detailLabel;


+(TableViewCell *)cellWithTableView:(UITableView *)tableView;
@end

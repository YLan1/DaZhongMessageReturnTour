//
//  MyButton.h
//  DaZhongMessageCommentTour
//
//  Created by YLan on 15/3/28.
//  Copyright (c) 2015年 YLan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyButton;

typedef void(^block)(MyButton *button);
@interface MyButton : UIButton

@property (nonatomic, copy) block myBlock;

+(MyButton *)buttonWithFrame:(CGRect)frame type:(UIButtonType)type title:(NSString *)title backgroundImage:(NSString *)background image:(NSString *)image andBlock:(block)tempBlock;
@end

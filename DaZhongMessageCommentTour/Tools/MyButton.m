//
//  MyButton.m
//  DaZhongMessageCommentTour
//
//  Created by YLan on 15/3/28.
//  Copyright (c) 2015年 YLan. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+(MyButton *)buttonWithFrame:(CGRect)frame type:(UIButtonType)type title:(NSString *)title backgroundImage:(NSString *)background image:(NSString *)image andBlock:(block)tempBlock{
    
    MyButton *button = [MyButton buttonWithType:type];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    button.frame = frame;
    
    
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [button addTarget:button action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];//触发block
    
    [button setBackgroundImage:[UIImage imageNamed:background] forState:UIControlStateNormal];
    
    button.myBlock = tempBlock;
    
    return button;

}
- (void)btnClicked:(UIButton *)button {
    
    //他执行tabbar中代码块中的内容
    self.myBlock(self);//里面也可写button //触发block
    
    
}





@end

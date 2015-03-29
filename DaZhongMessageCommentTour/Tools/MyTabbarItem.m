//
//  MyTabbarItem.m
//  DaZhongMessageCommentTour
//
//  Created by qianfeng on 15/3/28.
//  Copyright (c) 2015年 YLan. All rights reserved.
//

#import "MyTabbarItem.h"

@implementation MyTabbarItem

+ (MyTabbarItem *)myTabbarItemWithTitle:(NSString *)title imageName:(NSString *)imageName andImageHLName:(NSString *)imageHlName{
    
    UIImage *image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *imageHL = [[UIImage imageNamed:imageHlName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    MyTabbarItem *tabbarItem = [[[MyTabbarItem alloc] initWithTitle:title image:image selectedImage:imageHL] autorelease];
    
    [tabbarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor],NSForegroundColorAttributeName, nil] forState:UIControlStateHighlighted];
    
    return tabbarItem;
}

@end

//
//  TourViewController.m
//  DaZhongMessageCommentTour
//
//  Created by YLan on 15/3/27.
//  Copyright (c) 2015年 YLan. All rights reserved.
//

#import "TourViewController.h"
#import "MyTabbarItem.h"

@interface TourViewController ()

@end

@implementation TourViewController

- (instancetype)init{
    if (self = [super init]) {
        self.tabBarItem = [MyTabbarItem myTabbarItemWithTitle:@"团购" imageName:@"home_footbar_icon_group" andImageHLName:@"home_footbar_icon_group_pressed"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

//
//  TitleViewController.m
//  DaZhongMessageCommentTour
//
//  Created by YLan on 15/3/27.
//  Copyright (c) 2015年 YLan. All rights reserved.
//

#import "TitleViewController.h"
#import "MyTabbarItem.h"
#import "MyButton.h"
#import "BWCViewController.h"
#import "FoodViewController.h"
#import "TableViewCell.h"
#import "CitysViewController.h"
#import "GuangBoViewController.h"
#import "DaPaiViewController.h"

@interface TitleViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSArray *datas;
@end

@implementation TitleViewController

- (instancetype)init{
    if (self = [super init]) {
        self.tabBarItem = [MyTabbarItem myTabbarItemWithTitle:@"首页" imageName:@"home_footbar_icon_dianping" andImageHLName:@"home_footbar_icon_dianping_pressed"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self getNavigationItem];
    
//    UISearchBar *searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(80, 10, 220, 40)];
//    [ addSubview:searchBar];
//    searchBar.placeholder = @"12345678";
    
    CGFloat H = self.view.frame.size.height;
    CGFloat W = self.view.frame.size.width;

    
    UIScrollView *view = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, W, H)];
    [self.view addSubview:view];
    view.contentSize = CGSizeMake(1, H*2);
    
//   Top ScrollerView
    UIScrollView *scrollerView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, W, 180)];
    
    scrollerView.backgroundColor = [UIColor whiteColor];
    scrollerView.contentSize = CGSizeMake(W*3, 1);
    
    scrollerView.pagingEnabled = YES;
     [view addSubview:scrollerView];
    
    
    UIView *scrollView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, W, H)];
     UIView *scrollView2 = [[UIView alloc]initWithFrame:CGRectMake(W, 0, W, H)];
     UIView *scrollView3 = [[UIView alloc]initWithFrame:CGRectMake(2*W, 0, W, H)];
    [scrollerView addSubview:scrollView1];
    [scrollerView addSubview:scrollView2];
    [scrollerView addSubview:scrollView3];

        for (int i =0 ; i<8; i++) {
        
            CGFloat row = i%4;
            CGFloat line = i/4;

            NSArray *titles = @[@"美食", @"小吃快餐", @"休闲娱乐", @"全部分类", @"团购", @"订酒店", @"订外卖", @"看电影"];
            NSArray *images = @[@"food_u@2x", @"snack_u@2x", @"bar_o@2x", @"more_o@2x", @"groupon_u@2x", @"hotel_u@2x", @"takeaway_u@2x", @"film_u@2x"];
        MyButton *scrollView1Btn = [MyButton buttonWithFrame:CGRectMake(W/4*row, 90*line, W/4, 90) type:UIButtonTypeCustom title:titles[i] backgroundImage:images[i] image:nil andBlock:^(MyButton *button) {
            
            if (0 == i) {
                        FoodViewController *food = [[FoodViewController alloc]init];
                     [self .navigationController pushViewController:food animated:YES];
            }
        }];
            [scrollView1 addSubview:scrollView1Btn];
    }
    
    for (int i =0 ; i<8; i++) {
        
        CGFloat row = i%4;
        CGFloat line = i/4;
        
        NSArray *titles2 = @[@"丽人", @"亲子", @"结婚", @"家装", @"订座", @"找优惠", @"有料", @"看演出"];
        NSArray *images2 = @[@"beauty", @"baby", @"marry", @"jiazhuang", @"marry_u@2x", @"discount_u@2x", @"marry_u@2x", @"marry_u@2x"];
        MyButton *scrollView2Btn = [MyButton buttonWithFrame:CGRectMake(W/4*row, 90*line, W/4, 90) type:UIButtonTypeCustom title:titles2[i] backgroundImage:images2[i] image:nil andBlock:^(MyButton *button) {
            
        }];
        [scrollView2 addSubview:scrollView2Btn];
    }
    for (int i =0 ; i<7; i++) {
        
        CGFloat row = i%4;
        CGFloat line = i/4;
        
        NSArray *titles3 = @[@"足疗按摩", @"周边游", @"KTV", @"购物商场", @"会员卡", @"拍婚照", @"爱车"];
        NSArray *images3 = @[@"footer", @"marry_u@2x", @"ktv_u@2x", @"shopping_o@2x", @"vip", @"marry_u@2x", @"marry_u@2x"];
        MyButton *scrollView3Btn = [MyButton buttonWithFrame:CGRectMake(W/4*row, 90*line, W/4, 90) type:UIButtonTypeCustom title:titles3[i] backgroundImage:images3[i] image:nil andBlock:^(MyButton *button) {
            
            }];
        [scrollView3 addSubview:scrollView3Btn];
    }



    
    CGFloat gap  = 10;

    MyButton *btn = [MyButton buttonWithFrame:CGRectMake(0, CGRectGetMaxY(scrollerView.frame)+gap, W, 50) type:UIButtonTypeCustom title:nil backgroundImage:nil image:nil andBlock:^(MyButton *button) {
        
        DaPaiViewController  *dapai = [[DaPaiViewController alloc]init];
        [self.navigationController pushViewController:dapai animated:YES];

    }];

    [view addSubview:btn];
    
    //btn上摆UI
     UIImageView *leftView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"brand_buy_logo@2x"]];
    leftView.frame = CGRectMake(0, 0, 80, 50);
    [btn addSubview:leftView];
    
    UILabel *labelName = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(leftView.frame), 0, 150, 30)];
    labelName.text = @"南京大排档";
    [btn addSubview:labelName];
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(leftView.frame), CGRectGetMaxY(labelName.frame), 150, 20)];
    label1.text = @"每天十点开抢";
    [btn addSubview:label1];
    
    
//    四个btn
    for (int i =0 ; i<4; i++) {
        
        CGFloat row = i%2;
        CGFloat line = i/2;
        
        NSArray *titles = @[@"20万份霸王餐",@"开启放假模式",@"吃好扮美任性",@"17.9元看电影"];
        
        MyButton *button = [MyButton buttonWithFrame:CGRectMake((W+1)/2*line, CGRectGetMaxY(btn.frame)+gap+51*row, W/2-1, 50) type:UIButtonTypeCustom title:nil backgroundImage:nil image:nil andBlock:^(MyButton *button) {
            
            if (0 == i) {
                // button.titleLabel.text = @"20万份霸王餐";
                  BWCViewController  *bwc = [[BWCViewController alloc]init];
                  [self.navigationController pushViewController:bwc animated:YES];
                button.backgroundColor = [UIColor redColor];
            }
            if (1 == i) {
                // button.titleLabel.text = @"开启放假模式";
                button.backgroundColor = [UIColor yellowColor];
            }
            
            if (2 == i) {
                //  button.titleLabel.text = @"吃好扮美任性";
                button.backgroundColor = [UIColor orangeColor];
            }
            if (3 == i) {
                // button.titleLabel.text = @"17.9元看电影";
                button.backgroundColor = [UIColor grayColor];
            }
            
           
        }];
       
        button.backgroundColor = [UIColor grayColor];
         [view addSubview:button];
        
        UILabel *name = [[UILabel alloc]initWithFrame:CGRectMake(5+line, 5+row, 120, 15)];
        name.text = titles[i];
        [button addSubview:name];
        
        NSArray *label2Title = @[@"连送30天", @"立减低至1元", @"双美集锦大全", @"咱们不等了!"];
        UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(5+line, CGRectGetMaxY(name.frame)+5+row, 120, 15)];
        label2.text = label2Title[i];
        [button addSubview:label2];
        
        UIImageView *rightImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"brand_buy_logo@2x"]];
        rightImage.frame = CGRectMake(CGRectGetMaxX(name.frame)+5+line, row, 50, 50);
        [button addSubview:rightImage];
        
    }
//========
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0,380, W, 350)];
    [view addSubview:view1];
    view1.backgroundColor = [UIColor lightGrayColor];
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(view1.frame), 100, 30)];
    label.backgroundColor = [UIColor cyanColor];
    label.text = @"猜你喜欢";
    [view addSubview:label];
//建表
    UIView *hiddenView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(label.frame), W, H)];
    [view addSubview:hiddenView];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    tableView.backgroundColor = [UIColor redColor];
    [hiddenView addSubview:tableView];
    
    tableView.delegate = self;
    tableView.dataSource = self;
    

    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [TableViewCell cellWithTableView:tableView];
    

    return cell;

    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

#pragma  mark -- 北京 广播
- (void)getNavigationItem {
    
    
    //设置左边按钮
    MyButton *categoryButton = [MyButton buttonWithFrame:CGRectMake(0, 0, 40, 40) type:UIButtonTypeCustom title:@"北京" backgroundImage:nil image:nil andBlock:^(MyButton *button) {
        
        NSLog(@"写城市");
        
        CitysViewController *category = [[CitysViewController alloc] init];
        
          [self.navigationController pushViewController:category animated:YES];
        
        
    }];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:categoryButton];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    //右边
    
    MyButton *setButton = [MyButton buttonWithFrame:CGRectMake(0, 0, 40, 40) type:UIButtonTypeCustom title:nil backgroundImage:@"Detail_ShareByMail_D@2x" image:nil andBlock:^(MyButton *button) {
        
        
        
        GuangBoViewController *set = [[GuangBoViewController alloc] init];
        [self.navigationController pushViewController:set animated:YES];
        
        
        NSLog(@"写广播的内容");
        
    }];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:setButton];
    self.navigationItem.rightBarButtonItem = rightItem;
    
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

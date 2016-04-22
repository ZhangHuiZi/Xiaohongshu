//
//  HZTabBarController.m
//  Xiaohongshu
//
//  Created by 张慧子 on 16/4/18.
//  Copyright © 2016年 张慧子. All rights reserved.
//

#import "HZTabBarController.h"
#import "HZHomePageNavController.h"
#import "HZDiscoverNavController.h"
#import "HZShoppingNavController.h"
#import "HZMessageNavController.h"
#import "HZMineNavController.h"
#import "HZHomePageController.h"

@implementation HZTabBarController


-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    //添加HZTabBar的Nav
    HZHomePageController* homePageVC=[[HZHomePageController alloc]init];
    HZHomePageNavController* homePageNavVC=[[HZHomePageNavController alloc]initWithRootViewController:homePageVC];
    
    HZDiscoverNavController* discoverNavVC=[[HZDiscoverNavController alloc]init];
    HZShoppingNavController* shoppingNavVC=[HZShoppingNavController shoppingNavController];
    HZMessageNavController* messageNavVC=[[HZMessageNavController alloc]init];
    HZMineNavController* mineNavVC=[[HZMineNavController alloc]init];
    
    [self setupNavController:homePageNavVC];
    [self setupNavController:discoverNavVC];
    [self setupNavController:shoppingNavVC];
    [self setupNavController:messageNavVC];
    [self setupNavController:mineNavVC];
    
}


-(void)setupNavController:(UINavigationController* )navVC
{
    [self addChildViewController:navVC];
    
}
@end

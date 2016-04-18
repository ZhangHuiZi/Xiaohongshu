//
//  HZHomePageNavController.m
//  Xiaohongshu
//
//  Created by 张慧子 on 16/4/18.
//  Copyright © 2016年 张慧子. All rights reserved.
//

#import "HZHomePageNavController.h"

@implementation HZHomePageNavController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //1.字体Title
    self.navigationItem.title=@"小红书";
    NSMutableDictionary* dict=[NSMutableDictionary dictionary];
    dict[@"UITextAttributeFont"]=[UIFont fontWithName:@"STHeitiJ-Medium" size:22];
    dict[@"UITextAttributeTextColor"]=[UIColor whiteColor];
    [self.navigationBar setTitleTextAttributes:dict];
    
    //2.颜色
    self.navigationBar.backgroundColor=[UIColor redColor];
    
}

@end

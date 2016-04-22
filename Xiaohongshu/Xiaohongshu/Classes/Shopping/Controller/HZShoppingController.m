//
//  HZShoppingController.m
//  Xiaohongshu
//
//  Created by 张慧子 on 16/4/18.
//  Copyright © 2016年 张慧子. All rights reserved.
//

#import "HZShoppingController.h"

@interface HZShoppingController()
@property (weak,nonatomic) UIScrollView * columnView;
@property (weak,nonatomic) UIScrollView* contentView ;
@end

@implementation HZShoppingController
static NSInteger const buttonCount=6;
-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //添加栏目
    [self setupColumnView];
    //添加内容视图
    [self setupContentView];
    
    //添加所有控制器
    [self setupAllController];
    
    //添加button
    [self setupAllButton];
}

//添加栏目
-(void)setupColumnView
{
    UIScrollView* columnView=[[UIScrollView alloc]init];
    
    CGFloat height=45;
    columnView.frame=CGRectMake(0, HZNavBarH, HZScreenW,height);
    columnView.backgroundColor=[UIColor yellowColor];
    
    [self.view addSubview:columnView];
    self.columnView=columnView;
}

 //添加内容视图
-(void)setupContentView
{
    UIScrollView* contentView=[[UIScrollView alloc]init];
    
    CGFloat y=self.columnView.frame.size.height+HZNavBarH;
    CGFloat height=HZScreenH-HZNavBarH-self.columnView.frame.size.height;
    contentView.frame=CGRectMake(0, y , HZScreenW, height);
    contentView.backgroundColor=[UIColor orangeColor];
    
    
    [self.view addSubview:contentView];
    self.contentView=contentView;
    
}

//添加所有控制器
-(void)setupAllController
{
    
}

//添加button
-(void)setupAllButton
{
    for (NSInteger i=0; i<buttonCount; i++) {
        UIButton*btn=[[UIButton alloc]init];
        btn.backgroundColor=[UIColor purpleColor];
        CGFloat width=85;
        CGFloat x=i*width;
        CGFloat height=self.columnView.frame.size.height;
        btn.frame=CGRectMake(x, 0, 85, height);
        
        [self.columnView addSubview:btn];
    }
    
}














@end

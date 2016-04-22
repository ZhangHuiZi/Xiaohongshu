//
//  HZHomePageController.m
//  Xiaohongshu
//
//  Created by 张慧子 on 16/4/18.
//  Copyright © 2016年 张慧子. All rights reserved.
//

#import "HZHomePageController.h"
#import "HZHomePageCollectionViewCell.h"

@interface  HZHomePageController() <UICollectionViewDataSource,UICollectionViewDelegate>
@property(nonatomic,strong) NSArray*  array;
@property(nonatomic,strong) UIView*  backView;
@end

@implementation HZHomePageController

static NSString* const ID=@"HomePageCell";

#pragma mark LazyLaod
-(NSArray *)array
{
    if (_array==nil) {
        _array=[NSArray array];
    }
    return _array;
}

#pragma +++++++++++++

-(void)viewDidLoad
{
    
    [super viewDidLoad];
   //设置navBar
    [self setupNavBar];
    
    //添加View
    [self setupBackView];
    
    //添加collectionView
    //添加layout
    UICollectionViewFlowLayout* flowLayout=
    ({
        flowLayout=[[UICollectionViewFlowLayout alloc]init];
        CGFloat edge=10;
        CGFloat width=(HZScreenW-3*edge)*0.5;
        CGFloat height=width*250/160;
        flowLayout.itemSize=CGSizeMake(width,height);
        flowLayout.minimumInteritemSpacing=edge;
        flowLayout.minimumLineSpacing=edge;
        flowLayout.sectionInset=UIEdgeInsetsMake(-64+10, 0, 0, 0);
        
        flowLayout;
    });
    [self setupCollectionView:flowLayout];

}
-(void)setupBackView
{
    //添加View
    self.backView=[[UIView alloc]initWithFrame:CGRectMake(0, 64, HZScreenW,HZScreenH-64-44)];
    self.backView.backgroundColor=[UIColor yellowColor];
    
    
    [self.view addSubview:self.backView];
}

 //设置navBar
-(void)setupNavBar
{
    self.title=@"首页";
    self.navigationItem.title=@"小红书";
    [self.navigationController.navigationBar setBackgroundColor:[UIColor redColor]];
}

-(void)setupCollectionView:(UICollectionViewLayout*)layout
{
    UICollectionView * colletionView=[[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
    CGFloat edge=10;
    colletionView.frame=CGRectMake(edge, 0, HZScreenW-2*edge,HZScreenH);
    colletionView.backgroundColor=[UIColor whiteColor];
    colletionView.dataSource=self;
    colletionView.delegate=self;
    colletionView.autoresizesSubviews=NO;

    [self.backView addSubview:colletionView];
    
    [colletionView registerNib:[UINib nibWithNibName:@"HZHomePageCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:ID];
}





#pragma mark UICollectionViewDataSource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HZHomePageCollectionViewCell* cell=[collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    
    return cell;
}


#pragma ++++++++++++++++++


@end
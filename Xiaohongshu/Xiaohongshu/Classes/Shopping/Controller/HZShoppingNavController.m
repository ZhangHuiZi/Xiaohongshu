//
//  HZShoppingNavController.m
//  Xiaohongshu
//
//  Created by 张慧子 on 16/4/18.
//  Copyright © 2016年 张慧子. All rights reserved.
//

#import "HZShoppingNavController.h"
#import "HZShoppingController.h"
@implementation HZShoppingNavController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //
}
+(instancetype)shoppingNavController
{
    HZShoppingController* shoppingVC=[[HZShoppingController alloc]init];
    HZShoppingNavController* shoppingNavVC=[[self alloc]initWithRootViewController:shoppingVC];
    return shoppingNavVC;
}

@end

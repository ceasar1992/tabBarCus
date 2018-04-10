//
//  HHShowBar_VC.m
//  tabBarCus
//
//  Created by HDHaoShaoPeng on 2018/4/10.
//  Copyright © 2018年 HDHaoShaoPeng. All rights reserved.
//

#import "HHShowBar_VC.h"

@interface HHShowBar_VC ()

@end

@implementation HHShowBar_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    [UIView animateWithDuration:1.0 animations:^{  //导航栏有动画、标签栏没有~~~
        self.navigationController.navigationBarHidden = YES;
        self.navigationController.tabBarController.tabBar.hidden = NO;
//    }];
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

//
//  HSP_tabbar_VC.m
//  tabBarCus
//
//  Created by HDHaoShaoPeng on 2018/4/10.
//  Copyright © 2018年 HDHaoShaoPeng. All rights reserved.
//

#import "HSP_tabbar_VC.h"
#import "HHTabBar.h"
#import "AppDelegate.h"

#define isIPhoneX ScreenHeight==812

@interface HSP_tabbar_VC ()

@end

#pragma - mark - 使用系统自带tabbar 的方式
@implementation HSP_tabbar_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadControllers];
}

- (void)loadControllers {
    //创建tabBarController
    UIViewController *vcA = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"firstVC"];
    UIViewController *vcB = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"secondVC"];
    UIViewController *vcC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"thiredVC"];
    UIViewController *vcD = [[UIViewController alloc]init];
    UIViewController *vcE = [[UIViewController alloc]init];
    UIViewController *vcF = [[UIViewController alloc]init];
    UIViewController *vcG = [[UIViewController alloc]init];

    
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:vcA];
    
    //添加控制器
    self.viewControllers = @[nav1,vcB,vcC,vcD,vcE,vcF,vcG];
    
    
    //设置tabBarButton
    nav1.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@"home_normal"] selectedImage:[UIImage imageNamed:@"home_highlight"]];
    vcB.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"导览" image:[[UIImage imageNamed:@"topics_normal"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"topics_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    vcC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"资讯" image:[UIImage imageNamed:@"service_normal"] selectedImage:[UIImage imageNamed:@"service_highlight"]];
    vcD.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"资讯" image:[UIImage imageNamed:@"service_normal"] selectedImage:[UIImage imageNamed:@"service_highlight"]];
    vcE.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"资讯" image:[UIImage imageNamed:@"service_normal"] selectedImage:[UIImage imageNamed:@"service_highlight"]];
    vcF.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"资讯" image:[UIImage imageNamed:@"service_normal"] selectedImage:[UIImage imageNamed:@"service_highlight"]];
    vcG.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"资讯" image:[UIImage imageNamed:@"service_normal"] selectedImage:[UIImage imageNamed:@"service_highlight"]];
    
    vcB.tabBarItem.imageInsets = UIEdgeInsetsMake(-20, 0, 0, 0);
    
    vcC.tabBarItem.badgeValue = @"2";
    vcC.tabBarItem.badgeColor = [UIColor redColor];
    
    self.tabBar.tintColor = [UIColor orangeColor];
    
    self.tabBar.backgroundColor = [UIColor redColor];
    self.tabBar.backgroundImage = [[UIImage alloc]init];
}



@end

#pragma - mark - 自定义tabbar 的方式
//@implementation HSP_tabbar_VC
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//
//    [self loadControllers];
//}
//
//- (void)loadControllers {
//    //创建tabBarController
//    UIViewController *vcA = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"firstVC"];
//    UIViewController *vcB = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"secondVC"];
//    UIViewController *vcC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"thiredVC"];
//
//    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:vcA];
//
//    //添加控制器
//    self.viewControllers = @[nav1,vcB,vcC];
//    [self setupTabbar];
//}
//
//- (void)setupTabbar {
//    HHTabBar *tabBar = [[HHTabBar alloc] initWithFrame:self.tabBar.bounds];
//    tabBar.tabBarItemAttributes = @[@{kHHTabBarItemAttributeTitle : @"首页", kHHTabBarItemAttributeNormalImageName : @"home_normal", kHHTabBarItemAttributeSelectedImageName : @"home_highlight", kHHTabBarItemAttributeType : @(HHTabBarItemNormal)},
//                                    @{kHHTabBarItemAttributeTitle : @"导览", kHHTabBarItemAttributeNormalImageName : @"topics_normal", kHHTabBarItemAttributeSelectedImageName : @"topics_highlight", kHHTabBarItemAttributeType : @(HHTabBarItemRise)},
//                                    @{kHHTabBarItemAttributeTitle : @"文创asdfdfasfsfa", kHHTabBarItemAttributeNormalImageName : @"service_normal", kHHTabBarItemAttributeSelectedImageName : @"service_highlight", kHHTabBarItemAttributeType : @(HHTabBarItemNormal)},
//                                    ];
//    [self.tabBar addSubview:tabBar];
//    self.tabBar.backgroundColor = [UIColor blackColor];
//    self.selectedIndex = 0;
//    self.tabBar.backgroundImage = [[UIImage alloc]init];
//    self.tabBar.shadowImage = [[UIImage alloc]init];
//    AppDelegate *dele = (AppDelegate *)[UIApplication sharedApplication].delegate;
//    dele.tabVC = self;
//}
//
//@end

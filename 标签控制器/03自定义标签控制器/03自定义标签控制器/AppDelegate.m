//
//  AppDelegate.m
//  03自定义标签控制器
//
//  Created by CORYIL on 16/4/28.
//  Copyright © 2016年 徐锐. All rights reserved.
//

#import "AppDelegate.h"
#import "CRITabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    
    /*————————————————————————————————————————————————————————————————————————*/
    
    NSMutableArray *viewControllers = [NSMutableArray array];
    
    NSArray *titles = @[@"主页",@"信息",@"购票",@"发现",@"商店"];
    NSArray *imgNames = @[@"home",@"myinfo",@"payticket",@"discover",@"store"];
    
    for (int i = 0; i<5; i++) {
        
        //假设 2个导航控制器 3个视图控制器
        UIViewController *viewController = nil;
        
        UIViewController *vc = [[UIViewController alloc]init];
        
        vc.title = titles[i];
        vc.tabBarItem.image = [UIImage imageNamed:imgNames[i]];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_on",imgNames[i]]];
        
        vc.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
        
        viewController = vc;
        
        if (i<2) {
            
            UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
            
            viewController = nav;
        }
    
        [viewControllers addObject:viewController];
    }
    
    //标签
    CRITabBarController *tabbar = [[CRITabBarController alloc]init];
    
    tabbar.tabBar.selectionIndicatorImage = [UIImage imageNamed:@"选中"];
    
    tabbar.tabBar.backgroundImage = [UIImage imageNamed:@"tab_bg_all"];
    
    tabbar.viewControllers = viewControllers;
    
    tabbar.selectedIndex = 3;
    
    self.window.rootViewController = tabbar;
    
    
    
    return YES;
}



@end

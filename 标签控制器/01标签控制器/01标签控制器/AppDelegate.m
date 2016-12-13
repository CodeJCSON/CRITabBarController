//
//  AppDelegate.m
//  01标签控制器
//
//  Created by CORYIL on 16/4/28.
//  Copyright © 2016年 徐锐. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];

    /**
     *  UITabBarController:标签控制器
     
        管理若干个子控制器的控制器,这些子控制器是平级的,(区别于导航控制器UINavigationController)
     
     
                        Window
                            |
                        TabBarController
                            |
                ____________________________
                |              |            |
     
            vc2             nav0            vc1
                              |
                            vc0
     
     
     */
    
    
    UIViewController *vc0 = [[UIViewController alloc]init];
    
    UINavigationController *nav0 = [[UINavigationController alloc]initWithRootViewController:vc0];
    
    vc0.view.backgroundColor = [UIColor redColor];
    
    vc0.navigationItem.title = @"最近的消息";
    
//    vc0.title = @"消息";
    
    UIViewController *vc1 = [[UIViewController alloc]init];
    
    vc1.view.backgroundColor = [UIColor yellowColor];
    
    vc1.title = @"联系人";
    
    UIViewController *vc2 = [[UIViewController alloc]init];
    
    vc2.view.backgroundColor = [UIColor greenColor];
    
    vc2.title = @"动态";
    
    /*————————————————————————————————————————————————————————————————————————*/
    
    //1.创建
    UITabBarController *tabBar = [[UITabBarController alloc]init];

    //2.添加子控制器
    
        //添加一组
//    tabBar.viewControllers = @[vc0,vc1,vc2];
    
        //添加一个
    [tabBar addChildViewController:vc2];
    [tabBar addChildViewController:nav0];
    [tabBar addChildViewController:vc1];
    
    //3.TabBarItem
    
    /**
     typedef NS_ENUM(NSInteger, UITabBarSystemItem) {
     UITabBarSystemItemMore,
     UITabBarSystemItemFavorites,
     UITabBarSystemItemFeatured,
     UITabBarSystemItemTopRated,
     UITabBarSystemItemRecents,
     UITabBarSystemItemContacts,
     UITabBarSystemItemHistory,
     UITabBarSystemItemBookmarks,
     UITabBarSystemItemSearch,
     UITabBarSystemItemDownloads,
     UITabBarSystemItemMostRecent,
     UITabBarSystemItemMostViewed,
     };
     */
    
    //修改tabbarItem的四种方式
    
    vc0.tabBarItem.title = @"消息";
    vc0.tabBarItem.image = [UIImage imageNamed:@"home"];

    
    //系统样式
//    UITabBarItem *item0 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:100];

//    vc0.tabBarItem = item0;
    
    //标题+图片
    UITabBarItem *item1 = [[UITabBarItem alloc]initWithTitle:@"联系人" image:[UIImage imageNamed:@"discover"] tag:101];
    
    vc1.tabBarItem = item1;
    
    //标题+图片+选中图片
    UITabBarItem *item2 = [[UITabBarItem alloc]initWithTitle:@"动态" image:[UIImage imageNamed:@"discover"] selectedImage:[UIImage imageNamed:@"discover_on"]];
    
    vc2.tabBarItem = item2;
    
    
    
    self.window.rootViewController= tabBar;
    return YES;
}



@end

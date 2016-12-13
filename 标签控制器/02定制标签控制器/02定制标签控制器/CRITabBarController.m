//
//  CRITabBarController.m
//  02定制标签控制器
//
//  Created by CORYIL on 16/4/28.
//  Copyright © 2016年 徐锐. All rights reserved.
//

#import "CRITabBarController.h"
#import "FFFViewController.h"

@interface CRITabBarController ()

@end

@implementation CRITabBarController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setup];
        
    }
    return self;
}

- (void)setup{

    
    UIViewController *vc0 = [[UIViewController alloc]init];
    
    vc0.view.backgroundColor = [UIColor cyanColor];
    
    UIViewController *vc1 = [[UIViewController alloc]init];
    
    vc1.view.backgroundColor = [UIColor greenColor];
    
    FFFViewController *vc2 = [[FFFViewController alloc]init];
    
    UIViewController *vc3 = [[UIViewController alloc]init];
    
    vc3.view.backgroundColor = [UIColor orangeColor];
    
    UIViewController *vc4 = [[UIViewController alloc]init];
    
    vc4.view.backgroundColor = [UIColor purpleColor];
    
    UIViewController *vc5 = [[UIViewController alloc]init];
    
    vc5.view.backgroundColor = [UIColor blueColor];
    
    UIViewController *vc6 = [[UIViewController alloc]init];
    
    vc6.view.backgroundColor = [UIColor brownColor];
    
    //    [self addChildViewController:vc0];

    //    [self addChildViewController:vc1];

    //    [self addChildViewController:vc2];

    //    [self addChildViewController:vc3];

    //    [self addChildViewController:vc4];

    //    [self addChildViewController:vc5];
    

    
//    [self addChildViewController:vc6];
    
    /**
     *  addChildViewController:最多添加5个控制器
     
        setViewControllers:可以添加多个 但是如果超过5个,那么 从第5开始 会以导航控制器的分支的形式出现
     */
    
    self.viewControllers = @[vc0,vc1,vc2,vc3,vc4,vc5,vc6];
    
    /*————————————————————————————————————————————————————————————————————————*/
    
    self.selectedIndex = 1;
    
    //1.标签栏颜色
    self.tabBar.barTintColor = [UIColor greenColor];
    
    //2.背景颜色 半透明
    self.tabBar.backgroundColor = [UIColor cyanColor];
    
    //3.背景图片
    self.tabBar.backgroundImage = [UIImage imageNamed:@"navbg"];
    
    //4.渲染颜色
    self.tabBar.tintColor = [UIColor redColor];
    
    //5.选中图片
    self.tabBar.selectionIndicatorImage = [UIImage imageNamed:@"选中"];
    

    
    /*————————————————————————————————————————————————————————————————————————*/

    
    vc0.tabBarItem.title = @"主页";
    vc0.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc0.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    /**
     *  标签栏和导航栏的默认渲染颜色:默认灰色 选中蓝色
     
     为了让图片不被颜色渲染:
     //1.
     - (UIImage *)imageWithRenderingMode:(UIImageRenderingMode)renderingMode;
     
     UIImageRenderingModeAlwaysOriginal 总是保持原图
     
     //2.选择图片文件 修改设置项的render as 改为 Original
     */
    
    vc1.tabBarItem.title = @"联系人";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    
    //图片
    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
    //item的提示信息
    vc1.tabBarItem.badgeValue = @"new";
    
    
    
    //富文本属性
    NSDictionary *attributes = @{NSForegroundColorAttributeName:[UIColor grayColor]};
    
    /**
     *  UI_APPEARANCE_SELECTOR 只要方法后面出现该文字 说明可以用该类的+appearance方法 获取全局对象 并统一设置
     */
    //获取全局的tabbaritem对象
    UITabBarItem *appearance = [UITabBarItem appearance];
    
    [appearance setTitleTextAttributes:attributes forState:UIControlStateNormal];
    
    [appearance setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
    
    
    


}

- (void)viewDidLoad {
    [super viewDidLoad];
    

}



@end

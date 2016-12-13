//
//  FFFViewController.m
//  02定制标签控制器
//
//  Created by CORYIL on 16/4/28.
//  Copyright © 2016年 徐锐. All rights reserved.
//

#import "FFFViewController.h"
#import <objc/runtime.h>

@interface FFFViewController ()<UITabBarControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *tf;

@end

@implementation FFFViewController


//每个类此方法只会执行一次
//+ (void)initialize{
//    
//    unsigned int count = 0;
//    
//    Ivar *ivars = class_copyIvarList([UITextField class], &count);
//    
//    for (int i = 0; i<count; i++) {
//        
//        Ivar ivar = *(ivars+i);
//        
//        printf("%s\n",ivar_getName(ivar));
//        
//    }
//}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.tabBarItem.title = @"附页";
    self.view.backgroundColor = [UIColor yellowColor];
    
//    [self setValue:[UIColor yellowColor] forKeyPath:@"view.backgroundColor"];
    
    //1.
//    [self.tf setValue:[UIColor redColor] forKeyPath:@"_placeholderLabel.textColor"];

    //2.
    NSAttributedString *string = [[NSAttributedString alloc]initWithString:@"占位文字" attributes:@{NSForegroundColorAttributeName:[UIColor blueColor]}];
    
    self.tf.attributedPlaceholder = string;
    
    
    
    self.tabBarController.delegate = self;

}

#pragma mark -- UITabBarController

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{

    /**
     *  viewController:被选中的控制器
     */
    
    NSInteger index = [tabBarController.viewControllers indexOfObject:viewController];
    
    NSLog(@"%ld",index);

}


@end

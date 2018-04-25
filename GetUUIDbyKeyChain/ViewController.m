//
//  ViewController.m
//  GetUUIDbyKeyChain
//
//  Created by Ios_Developer on 2018/4/25.
//  Copyright © 2018年 com.Hai.GetUUIDbyKeyChain. All rights reserved.
//

#import "ViewController.h"
#import "CustomGetUUID.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"获取设备UUID";
    /*
     获取设备UUID，保存到keychain中，保证唯一
     */
    //
    [self loadShowUUIDLabel];
    
}
#pragma mark  ===== loadSubViews  =====
-(void)loadShowUUIDLabel
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 150, [UIScreen mainScreen].bounds.size.width - 40, 80)];
    label.text = [CustomGetUUID getUUID];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:15];
    label.textColor = [UIColor redColor];
    label.numberOfLines = 2;
    [self.view addSubview:label];
    NSLog(@"%@",[CustomGetUUID getUUID]);
}



@end

//
//  ViewController.m
//  CLMarkButton
//
//  Created by 李辉 on 15/12/15.
//  Copyright © 2015年 李辉. All rights reserved.
//

#import "ViewController.h"
#import "CLMarkButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CLMarkButton *radioA;
@property (weak, nonatomic) IBOutlet CLMarkButton *radioB;
@property (weak, nonatomic) IBOutlet CLMarkButton *radioC;

@property (weak, nonatomic) IBOutlet CLMarkButton *checkA;
@property (weak, nonatomic) IBOutlet CLMarkButton *checkB;
@property (weak, nonatomic) IBOutlet CLMarkButton *checkC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置单选按钮
    NSArray *radioArray = @[_radioA, _radioB, _radioC];
    for (int i=0; i<radioArray.count; ++i)
    {
        CLMarkButton *button = radioArray[i];
        button.type = CLMarkTypeSingleRadio;
        button.groupId = 10001;
        button.tag = i;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    // 设置多选按钮
    NSArray *checkArray = @[_checkA, _checkB, _checkC];
    for (int i=0; i<checkArray.count; ++i)
    {
        CLMarkButton *button = checkArray[i];
        button.type = CLMarkTypeCheck;
        button.groupId = 10002;
        button.tag = i;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    // 用代码创建单选按钮
    CLMarkButton *radioD = [[CLMarkButton alloc] initWithFrame:CGRectMake(20, 180, 80, 30)];
    CLMarkButton *radioE = [[CLMarkButton alloc] initWithFrame:CGRectMake(20, 220, 80, 30)];
    CLMarkButton *radioF = [[CLMarkButton alloc] initWithFrame:CGRectMake(20, 260, 80, 30)];
    NSArray *radioArray2 = @[radioD, radioE, radioF];
    for (int i=0; i<radioArray2.count; ++i)
    {
        CLMarkButton *button = radioArray2[i];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitle:[NSString stringWithFormat:@"单选%d", i+1] forState:UIControlStateNormal];
        button.type = CLMarkTypeSingleCheck;
        button.groupId = 10003;
        button.tag = i;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonClick:(CLMarkButton *)sender
{
    [sender buttonDidClick];
    NSLog(@"%d", sender.selected);
}



@end

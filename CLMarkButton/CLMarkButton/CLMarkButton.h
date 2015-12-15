//
//  CLMarkButton.h
//  CLMarkButton
//
//  Created by 李辉 on 15/12/15.
//  Copyright © 2015年 李辉. All rights reserved.
//
//  在xib文件中使用此控件时，选择的Type为Custom
//  https://github.com/changelee82/CLMarkButton
//  

#import <UIKit/UIKit.h>

/** 按钮类型 */
typedef NS_ENUM(NSInteger, CLMarkType) {
    /** Check类型，多选 */
    CLMarkTypeCheck,
    /** Radio类型，多选 */
    CLMarkTypeRadio,
    /** Check类型，单选 */
    CLMarkTypeSingleCheck,
    /** Radio类型，单选 */
    CLMarkTypeSingleRadio
};



/** 拥有选择框标志的按钮 */
@interface CLMarkButton : UIButton

/** 选择框类型 */
@property (nonatomic, assign) CLMarkType type;

/** 按钮组号 */
@property (nonatomic, assign) NSInteger groupId;

/** 触发按钮被点击的方法，刷新同组按钮的选中状态 */
- (void)buttonDidClick;

@end

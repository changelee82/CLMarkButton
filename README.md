# CLMarkButton 1.0
拥有单选、多选标志的按钮

<br />
作者：李辉 <br />
联系方式：6545823@qq.com <br />
编译环境：Xcode 7.2 <br />
运行环境：iOS 9.2 运行正常 <br />
您在使用该控件的过程中，如有任何疑问或建议，请通过邮箱联系我，谢谢！ <br />

<br />
![image](https://github.com/changelee82/CLMarkButton/raw/master/Demo.gif)
<br />

使用方法
===============
可使用自动布局或代码添加该控件； <br />
在xib文件中使用此控件时，请选择按钮的Type为Custom； <br />

    #import "CLMarkButton.h"
    
    CLMarkButton *button = [[CLMarkButton alloc] initWithFrame:CGRectMake(20, 180, 80, 30)];
    button.type = CLMarkTypeSingleCheck;  // 设置按钮类型
    button.groupId = 10001;   // 设置按钮的分组
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];  // 添加点击事件
    [self.view addSubview:button];

    - (void)buttonClick:(CLMarkButton *)sender
    {
        [sender buttonDidClick];  // 执行按钮被点击事件，刷新同组按钮状态
    }

详细的示例请参考代码。 <br />

历史版本
===============
v1.0 - 2015-12-15 <br />
Added <br />
基础功能完成 <br />

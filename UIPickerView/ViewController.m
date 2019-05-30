//
//  ViewController.m
//  UIPickerView
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建选择视图对象
    //显示多组数据和多个元素以供选择
    //例如选择日期，时间，日历效果
    //地区地址等功能
    UIPickerView *pickView = [[UIPickerView alloc] init];
    //设置选择视图的位置和大小
    pickView.frame = CGRectMake(10, 100, 300, 200);
    //设置普通代理对象为当前视图控制器
    pickView.delegate = self;
    //设置数据代理对象为当前视图控制器
    pickView.dataSource = self;
    [self.view addSubview:pickView];
    
}
//返回选择视图的组数
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}
//返回每组元素的个数
//P1:调用此协议的选择视图本身
//P2:第几组的元素个数
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0){
        return 5;
    }else if(component == 1){
        return 10;
    }else if(component == 2){
        return 15;
    }else{
        return 10;
    }
}
//显示每个元素的内容
//P1:调用此协议的选择视图本身
//P2:行数
//P3:组数
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSString *str = [NSString stringWithFormat:@"%ld组%ld行",component + 1, row + 1];
    return str;
}

//设置每行高度
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 100;
}

//将自定义的视图显示到屏幕上
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",row%15 +1]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, 100, 100);
    return imageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

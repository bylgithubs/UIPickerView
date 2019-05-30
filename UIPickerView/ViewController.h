//
//  ViewController.h
//  UIPickerView
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//普通协议代理，处理视图选取等普通事件协议功能
UIPickerViewDataSource,
//数据协议代理，处理获取数据时的代理协议函数
UIPickerViewDelegate>


@end


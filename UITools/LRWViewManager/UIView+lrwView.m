//
//  UIView+lrwView.m
//  myTools
//
//  Created by apple   on 2018/6/8.
//  Copyright © 2018年 apple  . All rights reserved.
//

#import "UIView+lrwView.h"

@implementation UIView (lrwView)



+(UIView *)viewWithLRW_setView:(void(^)(UIViewManager *manager))block{
    UIView *view = [[UIView alloc]init];
    [view LRW_setView:block];
    return view;
}
+(UILabel *)labWithLRW_setView:(void(^)(UIViewManager *manager))block{
    UILabel *lab = [[UILabel alloc]init];
    [lab LRW_setView:block];
    return lab;
}
+(UIButton *)buttonWithLRW_setView:(void(^)(UIViewManager *manager))block{
    UIButton *btn =  [UIButton buttonWithType:UIButtonTypeSystem];
    [btn LRW_setView:block];
    return btn;
}


-(void)LRW_setView:(void (^)(UIViewManager *))block{
   
        UIViewManager *manager = [[UIViewManager alloc]initWthView:self];
        if (block) {
            block(manager);
        }
   
}

@end


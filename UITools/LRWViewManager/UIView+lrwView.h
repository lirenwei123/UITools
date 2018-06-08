//
//  UIView+lrwView.h
//  myTools
//
//  Created by apple   on 2018/6/8.
//  Copyright © 2018年 apple  . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewManager.h"

@interface UIView (lrwView)


+(UIView *)viewWithLRW_setView:(void(^)(UIViewManager *manager))block;
+(UILabel *)labWithLRW_setView:(void(^)(UIViewManager *manager))block;
+(UIButton *)buttonWithLRW_setView:(void(^)(UIViewManager *manager))block;


-(void)LRW_setView:(void (^)(UIViewManager *))block;



@end

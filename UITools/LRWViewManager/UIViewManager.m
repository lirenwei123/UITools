//
//  UIViewManager.m
//  myTools
//
//  Created by apple   on 2018/6/8.
//  Copyright © 2018年 apple  . All rights reserved.
//

#import "UIViewManager.h"



@interface UIViewManager()

@property (strong, nonatomic)UILabel   *lab;
@property (strong, nonatomic)UIButton *btn;
@end

@implementation UIViewManager


-(instancetype)initWthView:(UIView *)view{
    if (self == [super init]) {
        
        self.view = view;
        if ([_view isKindOfClass:[UILabel class]]) {
            _lab = (UILabel*)view;
        }else if ([_view isKindOfClass:[UIButton class]]){
            _btn = (UIButton*)view;
        }
    }
    return self;
    
    
}


-(UIViewManager *(^)(CGRect))frame{
    return ^(CGRect kframe){
        self.view.frame = kframe;
        return self;
    };
}

-(UIViewManager *(^)(CGFloat, CGFloat, CGFloat, CGFloat))xywh{
    return ^(CGFloat x, CGFloat y, CGFloat w, CGFloat h){
        self.view.frame = CGRectMake(x, y, w, h);
        return self;
    };
}

-(UIViewManager *(^)(UIColor *))backGroundColor{
    return ^(UIColor *kcolor){
        self.view.backgroundColor = kcolor;
        return self;
    };
}


-(UIViewManager *(^)(CGPoint))center{
    return ^(CGPoint kcenter ){
        self.view.center = kcenter;
        return self;
    };
}


-(UIViewManager *(^)(UIView *))superView{
    return ^(UIView *ksuperView){
        [ksuperView addSubview:self.view];
        return self;
    };
}



-(UIViewManager *(^)(CGFloat))cornerRadius{
    return ^(CGFloat kcornerRadius){
        self.view.layer.cornerRadius = kcornerRadius;
        return self;
    };
}

-(UIViewManager *(^)(UIColor *))borderColor{
    return ^(UIColor *kcolor){
        self.view.layer.borderColor = kcolor.CGColor;
        return self;
    };
}

-(UIViewManager *(^)(CGFloat))borderWidth{
    return ^(CGFloat kborderWidth){
        self.view.layer.borderWidth = kborderWidth;
        return self;
    };
}

-(UIViewManager *(^)(CGFloat))font{
    return ^(CGFloat kfont){
        if (self.lab) {
            self.lab.font = [UIFont systemFontOfSize:kfont];
        }else if (self.btn){
            self.btn.titleLabel.font = [UIFont systemFontOfSize:kfont];
        }
        return self;
    };
}

-(UIViewManager *(^)(CGFloat))blodFont{
    return ^(CGFloat kfont){
        if (self.lab) {
            self.lab.font = [UIFont boldSystemFontOfSize:kfont];
        }else if (self.btn){
            self.btn.titleLabel.font = [UIFont boldSystemFontOfSize:kfont];
        }
        return self;
    };
}

-(UIViewManager *(^)(NSString *))text{
    return ^(NSString *ktext ){
        if (self.lab) {
            self.lab.text = ktext;
        }
        return self;
    };
}

-(UIViewManager *(^)(NSMutableAttributedString *))attText{
    return ^(NSMutableAttributedString *ktext ){
        if (self.lab) {
            self.lab.attributedText = ktext;
        }
        return self;
    };
}

-(UIViewManager *(^)(UIColor *))textColor{
    return ^(UIColor *ktextcolor ){
        if (self.lab) {
            self.lab.textColor = ktextcolor;
        }
        return self;
    };
}

-(UIViewManager *(^)(NSTextAlignment))textAlignment{
    return ^(NSTextAlignment kaligin ){
         if (self.lab) {
             self.lab.textAlignment = kaligin;
         }
        return self;
    };
}


-(UIViewManager *(^)(NSInteger))numberOfLines{
    return ^(NSInteger Lines ){
        if (self.lab) {
           self.lab.numberOfLines = Lines;
        }
        return self;
    };
}

-(UIViewManager *(^)(NSString *, UIControlState))stateTitle{
    return ^(NSString *title, UIControlState state){
        if (self.btn) {
            [self.btn setTitle:title forState:state];
        }
        return self;
    };
}

-(UIViewManager *(^)(UIColor *, UIControlState))stateTextColor{
    return ^(UIColor *color, UIControlState state){
        if (self.btn) {
            [self.btn setTitleColor:color forState:state];
        }
        return self;
    };
}

-(UIViewManager *(^)(UIImage *, UIControlState))stateImg{
    return ^(UIImage *img, UIControlState state){
        if (self.btn) {
            [self.btn setImage:img forState:state];
        }
        return self;
    };
}

-(UIViewManager *(^)(UIImage *, UIControlState))stateBackGroundImg{
    return ^(UIImage *img, UIControlState state){
        if (self.btn) {
            [self.btn setBackgroundImage:img forState:state];
        }
        return self;
    };
}

-(UIViewManager *(^)(BOOL))enlable{
    return ^(BOOL kenlable ){
        if (self.btn) {
            self.btn.enabled = kenlable;
        }
        return self;
    };
}

-(UIViewManager *(^)(BOOL))selected{
    return ^(BOOL kselected ){
        if (self.btn) {
            self.btn.selected = kselected;
        }
        return self;
    };
}

-(UIViewManager *(^)(id, SEL))click{
    return ^(id target, SEL selector){
        if (self.btn) {
            [self.btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
        }
        return self;
    };
}



@end

//
//  UIViewManager.h
//  myTools
//
//  Created by apple   on 2018/6/8.
//  Copyright © 2018年 apple  . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIViewManager : NSObject

@property (strong, nonatomic)UIView *view;

-(instancetype)initWthView:(UIView *)view;

/**
 UIView
 */
-(UIViewManager* (^)(CGPoint center))center;
-(UIViewManager* (^)(CGRect rect))frame;
-(UIViewManager* (^)(CGFloat x,CGFloat y,CGFloat w,CGFloat h))xywh;
-(UIViewManager* (^)(UIColor* color))backGroundColor;
-(UIViewManager* (^)(UIView *superView))superView;

-(UIViewManager* (^)(CGFloat cornerRadius))cornerRadius;
-(UIViewManager* (^)(UIColor *borderColor))borderColor;
-(UIViewManager* (^)(CGFloat borderWidth))borderWidth;



/**  UILable &&  UIButton  */
-(UIViewManager* (^)(CGFloat font))font;
-(UIViewManager* (^)(CGFloat font))blodFont;


/**
 UILable
 */
-(UIViewManager* (^)(NSString* text))text;
-(UIViewManager* (^)(NSMutableAttributedString * attr))attText;
-(UIViewManager* (^)(UIColor* color))textColor;
-(UIViewManager* (^)(NSTextAlignment alig))textAlignment;
-(UIViewManager* (^)(NSInteger lines))numberOfLines;

/**
 UIButton
 */

-(UIViewManager* (^)(NSString* text,UIControlState stae))stateTitle;
-(UIViewManager* (^)(UIColor* color,UIControlState stae))stateTextColor;
-(UIViewManager* (^)(UIImage *img,UIControlState state))stateImg;
-(UIViewManager* (^)(UIImage *img,UIControlState state))stateBackGroundImg;
-(UIViewManager* (^)(BOOL yn))enlable;
-(UIViewManager* (^)(BOOL yn))selected;
-(UIViewManager* (^)(id target,SEL selctor))click;


@end

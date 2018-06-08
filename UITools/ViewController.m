//
//  ViewController.m
//  myTools
//
//  Created by apple   on 2018/5/24.
//  Copyright © 2018年 apple  . All rights reserved.
//

#import "ViewController.h"
#import "UIView+lrwView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [UILabel labWithLRW_setView:^(UIViewManager *manager) {
        manager.xywh(0,0,200,200).center(self.view.center).backGroundColor([UIColor greenColor]).font(20).superView(self.view).text(@"test").borderColor([UIColor redColor]).borderWidth(5).cornerRadius(10).textColor([UIColor whiteColor]).textAlignment(NSTextAlignmentCenter);
    }];


    [UIView viewWithLRW_setView:^(UIViewManager *manager) {
        manager.xywh(20,self.view.center.y+150,300,5).backGroundColor([UIColor cyanColor]).superView(self.view);
    }];
    
    [UIButton buttonWithLRW_setView:^(UIViewManager *manager) {
        manager.xywh(30 ,74,100,50).backGroundColor([UIColor redColor]).click(self,@selector(touch)).superView(self.view);
    }];

}


-(void)touch{
    NSLog(@"---------------");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

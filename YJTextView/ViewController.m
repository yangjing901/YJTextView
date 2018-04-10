//
//  ViewController.m
//  YJTextView
//
//  Created by YangJing on 2018/4/10.
//  Copyright © 2018年 YangJing. All rights reserved.
//

#import "ViewController.h"
#import "YJTextView.h"

@implementation ViewController {
    YJTextView *_textView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configSubview];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_textView resignFirstResponder];
}

- (void)configSubview {
    self.view.backgroundColor = [UIColor brownColor];
    
    _textView = [[YJTextView alloc] init];
    _textView.placeholder = @"请输入内容";
    [self.view addSubview:_textView];
    
    _textView.frame = CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 50);
    _textView.center = CGPointMake(CGRectGetWidth([UIScreen mainScreen].bounds)/2, 100);
}

@end

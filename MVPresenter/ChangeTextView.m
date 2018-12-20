//
//  ChangeTextView.m
//  MVPresenter
//
//  Created by 柯浩然 on 2018/12/20.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import "ChangeTextView.h"

@interface ChangeTextView ()
@property(nonatomic, strong) UIButton *changeButton;
@end

@implementation ChangeTextView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    
    UIButton *changeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.changeButton = changeButton;
    [self addSubview:changeButton];
    changeButton.frame = CGRectMake(0, 0, 100, 30);
    [changeButton setBackgroundColor:[UIColor yellowColor]];
    [changeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [changeButton addTarget:self action:@selector(changeButtonClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)changeButtonClick {
    
    if ([self.delegate respondsToSelector:@selector(changeTextViewDidClickButton)]) {
        [self.delegate changeTextViewDidClickButton];
    }
}
- (void)setName:(NSString *)name {
    [self.changeButton setTitle:name forState:UIControlStateNormal];
}
@end

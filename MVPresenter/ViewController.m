//
//  ViewController.m
//  MVPresenter
//
//  Created by 柯浩然 on 2018/11/6.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import "ViewController.h"
#import "VansPresenter.h"
#import "ChangeTextView.h"
#import "VansModel.h"
@interface ViewController ()<VansProtocol>

@property(nonatomic, strong) VansPresenter *presenter;
@property(nonatomic, strong) ChangeTextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupContentView];
    
    VansModel *model = [[VansModel alloc] init];
    model.likeVans = YES;
    self.presenter = [[VansPresenter alloc] initWithView:self model:model];
    self.textView.delegate = self.presenter;
}

- (void)setupContentView {
    
    ChangeTextView *view = [[ChangeTextView alloc] init];
    self.textView = view;
    [self.view addSubview:view];
    view.center = self.view.center;
    view.bounds = CGRectMake(0, 0, 200, 200);
    view.backgroundColor = [UIColor blueColor];
}

-(void)changeName:(NSString *)name {
    [self.textView setName:name];
}

@end

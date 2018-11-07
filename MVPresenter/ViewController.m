//
//  ViewController.m
//  MVPresenter
//
//  Created by 柯浩然 on 2018/11/6.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import "ViewController.h"
#import "VansPresenter.h"
@interface ViewController ()<VansProtocol>
@property (weak, nonatomic) IBOutlet UIButton *nameButton;
@property(nonatomic, strong) VansPresenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    VansModel *model = [[VansModel alloc] init];
    model.likeVans = YES;
    self.presenter = [[VansPresenter alloc] initWithView:self model:model];
}
- (IBAction)buttonClick:(id)sender {
    [self.presenter buttonClick];
}

-(void)changeName:(NSString *)name {
    [self.nameButton setTitle:name forState:UIControlStateNormal];
}

@end

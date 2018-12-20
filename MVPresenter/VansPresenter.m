//
//  VansPresenter.m
//  MVPresenter
//
//  Created by 柯浩然 on 2018/11/6.
//  Copyright © 2018 柯浩然. All rights reserved.
//

#import "VansPresenter.h"

#import "VansModel.h"
@interface VansPresenter()
@property(nonatomic, strong) id<VansProtocol> view;
@property(nonatomic, strong) VansModel *model;
@end

@implementation VansPresenter
- (instancetype)initWithView:(id<VansProtocol>)view model:(VansModel *)model {
    self = [super init];
    if (self) {
        _view = view;
        _model = model;
    }
    return self;
}

- (void)changeTextViewDidClickButton {
    
    if ([_view respondsToSelector:@selector(changeName:)]) {
        if (_model.likeVans) {
            
            [_view changeName:@"Vans"];
        }else {
            [_view changeName:@"FILA"];
        }
    }
}

@end

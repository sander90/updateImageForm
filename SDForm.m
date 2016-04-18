//
//  SDForm.m
//  BubbleGum
//
//  Created by shansander on 16/4/16.
//  Copyright © 2016年 shansander. All rights reserved.
//

#import "SDForm.h"
#import "AppDefine.h"

@implementation SDForm

- (id)init
{
    self = [super init];
    if (self) {
        [self initFormData];
    }
    return self;
}
- (void)initFormData
{
    _formData = [[NSMutableData alloc] init];
}

- (void)addFromData:(SDInputNode *)node
{
    @weakify(self);
    [weak_self.formData appendData:node.nodeData];
}

@end

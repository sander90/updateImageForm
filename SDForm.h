//
//  SDForm.h
//  BubbleGum
//
//  Created by shansander on 16/4/16.
//  Copyright © 2016年 shansander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SDInputNode.h"
@interface SDForm : NSObject

@property (nonatomic, strong,readonly)NSMutableData *formData;

- (void)addFromData:(SDInputNode *)node;

@end

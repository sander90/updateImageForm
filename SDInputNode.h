//
//  SDInputNode.h
//  BubbleGum
//
//  Created by shansander on 16/4/16.
//  Copyright © 2016年 shansander. All rights reserved.
//

#import <Foundation/Foundation.h>

#define BOUNDARY @"----WebKitFormBoundaryADqmVOuhtqvMpQsA"

@interface SDInputNode : NSObject

@property (nonatomic, strong, readonly)NSData * nodeData;

/**
 * 输入的文字的内容
 * Content-Disposition
 */
- (id)initWithType:(NSString * )contentType Content:(NSString * )content;
/**
 * 输入的文件内容
 */
- (id)initWithFilename:(NSString * )filename fileData:(NSData * )fileData contentType:(NSString * )contentType;
/**
 * 输入结束内容
 */
- (id)initWithEndFormNode;
@end

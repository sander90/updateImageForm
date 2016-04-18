//
//  SDInputNode.m
//  BubbleGum
//
//  Created by shansander on 16/4/16.
//  Copyright © 2016年 shansander. All rights reserved.
//

#import "SDInputNode.h"

@implementation SDInputNode

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithType:(NSString * )contentType Content:(NSString * )content
{
    self = [super init];
    if (self) {
        NSString *contentKey = [NSString stringWithFormat:@"--%@\r\nContent-Disposition: form-data; name=\"%@\"\r\n\r\n%@\r\n",BOUNDARY,contentType,content];
        NSData * data = [contentKey dataUsingEncoding:NSUTF8StringEncoding];
        _nodeData = data;
    }
    return self;
}

- (id)initWithFilename:(NSString * )filename fileData:(NSData * )fileData contentType:(NSString * )contentType
{
    self = [super init];
    if (self) {
        NSMutableData * contentData = [NSMutableData data];
        NSString *param = [NSString stringWithFormat:@"--%@\r\nContent-Disposition: form-data; name=\"%@\";filename=\"%@\"\r\nContent-Type: image/jpeg; charset=utf-8\r\n\r\n",BOUNDARY,contentType,filename];
        NSData * data = [param dataUsingEncoding:NSUTF8StringEncoding];
        [contentData appendData:data];
        [contentData appendData:fileData];
        [contentData appendData:[@"\r\n" dataUsingEncoding:NSUTF8StringEncoding]];
        _nodeData = contentData;
    }
    return self;
}

- (id)initWithEndFormNode
{
    self = [super init];
    if (self) {
        NSString *endString = [NSString stringWithFormat:@"--%@--",BOUNDARY];
        NSData * data = [endString dataUsingEncoding:NSUTF8StringEncoding];
        _nodeData = data;
    }
    return self;
}


@end

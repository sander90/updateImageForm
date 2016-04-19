# updateImageForm

使用方法：

```objective-c
SDForm * form = [[SDForm alloc] init];
SDInputNode * node1 = [[SDInputNode alloc] initWithType:@"noticeTitle" Content:noticeTitle];
[form addFromData:node1];
SDInputNode * node2 = [[SDInputNode alloc] initWithType:@"noticeBody" Content:noticeBody];
[form addFromData:node2];
for (ALAsset * imageone in imageList) {
     NSString* filename = [AppCustom getUUIDDevice];
     filename = [filename stringByAppendingString:@".jpg"];
     CGImageRef imageref = imageone.defaultRepresentation.fullScreenImage;
     UIImage * one = [UIImage imageWithCGImage:imageref];  
     NSData * imageData = UIImageJPEGRepresentation((UIImage *)one, 0.05f);
     SDInputNode * node = [[SDInputNode alloc] initWithFilename:filename fileData:imageData contentType:@"noticeUrl"];
     [form addFromData:node];
}
SDInputNode * endNode = [[SDInputNode alloc] initWithEndFormNode];
[form addFromData:endNode];
```

使用formData

```objective-c
[urlRequest setHTTPBody:form.formData];
```


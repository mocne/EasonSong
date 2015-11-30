//
//  EasonImage.h
//  EasonSong
//
//  Created by qingyun on 15/11/25.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EasonImage : NSObject

//声明属性
@property (nonatomic, strong) NSString *name;

//声明初始化方法
-(instancetype)initWithDictionary:(NSDictionary *)dict;
+(instancetype)imageWithDictionary:(NSDictionary *)dict;

@end

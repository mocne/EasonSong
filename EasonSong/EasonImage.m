//
//  EasonImage.m
//  EasonSong
//
//  Created by qingyun on 15/11/25.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "EasonImage.h"

@implementation EasonImage

-(instancetype)initWithDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
        //使用kvc方式直接灌入数据（模型属性跟字典键相同）
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)imageWithDictionary:(NSDictionary *)dict
{
    return  [[self alloc]initWithDictionary:dict];
}

@end

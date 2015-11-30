//
//  musicPlayer.m
//  EasonSong
//
//  Created by qingyun on 15/11/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "musicPlayer.h"

@implementation musicPlayer

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self=[super init]) {
        _name=dict[@"name"];
        _filename=dict[@"filename"];
        _image=dict[@"image"];
        
    }
    return self;
}

+ (instancetype)musicWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

@end

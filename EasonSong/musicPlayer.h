//
//  musicPlayer.h
//  EasonSong
//
//  Created by qingyun on 15/11/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface musicPlayer : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *filename;
@property (nonatomic,strong) NSString *image;

+ (instancetype)musicWithDict:(NSDictionary *)dict;

- (instancetype)initWithDict:(NSDictionary *)dict;

@end

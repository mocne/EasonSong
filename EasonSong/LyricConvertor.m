//
//  LyricConvertor.m
//  EasonSong
//
//  Created by qingyun on 15/11/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "LyricConvertor.h"
#import "musicViewController.h"

@implementation LyricConvertor

- (void)lyricWithFile:(NSString *)lyricName
{
    NSString *fileStr = [NSString stringWithContentsOfFile:lyricName encoding:NSUTF8StringEncoding error:nil];
    
    NSArray *lyric = [fileStr componentsSeparatedByString:@"\n"];
    
    _lyric = [NSMutableArray array];
    for (NSString *str in lyric) {
        NSArray *strArr = [str componentsSeparatedByString:@"]"];
        if ([strArr count] > 1) {
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            NSString *time = strArr[0];
            
            NSArray *timeArr = [time componentsSeparatedByString:@":"];
            NSTimeInterval timeInterval = [timeArr[1] floatValue] + [[timeArr[0] substringFromIndex:1] floatValue]*60;
            
            dict[@"time"] = @(timeInterval);
            dict[@"lyric"] = strArr[1];
            [_lyric addObject:dict];
        }
    }
}

- (void)song:(NSTimer *)timer
{
    _timeCount += 1;
    for (NSDictionary *dict in _lyric) {
        if ((int)[dict[@"time"] floatValue] == (int)_timeCount) {
            
            NSLog(@"\t%@", dict[@"lyric"]);
            [_lyric removeObject:dict];
            break;
        }
    }
}

@end

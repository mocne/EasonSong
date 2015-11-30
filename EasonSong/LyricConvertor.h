//
//  LyricConvertor.h
//  EasonSong
//
//  Created by qingyun on 15/11/26.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LyricConvertor : NSObject

{
    NSMutableArray *_lyric;
    NSTimeInterval _timeCount;
}

- (void)lyricWithFile:(NSString *)lyricName;

- (void)song:(NSTimer *)timer;

@end

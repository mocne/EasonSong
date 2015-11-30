//
//  musicViewController.m
//  EasonSong
//
//  Created by qingyun on 15/11/25.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "musicViewController.h"
#import "EasonImage.h"
#import <AVFoundation/AVFoundation.h>
#import "LyricConvertor.h"
#import "musicPlayer.h"

@interface musicViewController ()<AVAudioPlayerDelegate>
@property (nonatomic)NSTimer *timer;
@property (nonatomic)NSTimer *timer2;


@property (nonatomic,strong)AVAudioPlayer *audioPlayer;

@property (strong, nonatomic) IBOutlet UIImageView *icon;
@property (strong, nonatomic) IBOutlet UIButton *play;
@property (strong, nonatomic) IBOutlet UILabel *songName;
@property (strong, nonatomic) IBOutlet UILabel *lyricLabel;
@property (strong, nonatomic) IBOutlet UIButton *lastSong;
@property (strong, nonatomic) IBOutlet UIButton *nextSong;
@property (strong, nonatomic) IBOutlet UIButton *imageBtn;

@property (nonatomic) NSInteger index;//表示当前图片的索引


@property (nonatomic, strong) NSArray *images;


- (void)nextImage;

@end

@implementation musicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageBtn.layer.cornerRadius = 120;
    
    [self updateUI];
    
    // Do any additional setup after loading the view.
}
- (IBAction)rolling:(UIButton *)sender {
    if (_timer == nil){
        _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(rolling)userInfo:nil repeats:YES];
        
        _timer2 = [NSTimer scheduledTimerWithTimeInterval:11 target:self selector:@selector(nextImage)userInfo:nil repeats:YES];
        
        [_play setImage:[UIImage imageNamed:@"Pause"] forState:UIControlStateNormal];
       
    }
    else
    {
        [_play setImage:[UIImage imageNamed:@"Play"] forState:UIControlStateNormal];
        [_timer invalidate];
         _timer = nil;
        [_timer2 invalidate];
         _timer2 = nil;
    }
}

- (void)rolling
{
    [UIView animateWithDuration:4 animations:^{
        
        _icon.transform = CGAffineTransformRotate(_icon.transform, M_PI_2);
    }];
    
}

-(NSArray *)images
{
    if (_images == nil) {
        [NSThread sleepForTimeInterval:3.0];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"images" ofType:@"plist"];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *models = [NSMutableArray array];
        for (NSDictionary *dict in array) {
            EasonImage *image = [EasonImage imageWithDictionary:dict];
            [models addObject:image];
        }
        _images = models;
        
    }
    return _images;
}

- (void)nextImage
{
    [UIView animateWithDuration:1 animations:^{

            _icon.alpha = 0;

    }];

    _index++;
    _index = _index%7;
    [self updateUI];
    
    [UIView animateWithDuration:1 animations:^{
        
        _icon.alpha = 1;
        
    }];

}

-(void)updateUI{
    [UIView animateWithDuration:2 animations:^{
        _icon.alpha = 1;
    }];
    EasonImage *image = self.images[_index];
    
    //更改imageView的图片
    _icon.image = [UIImage imageNamed:image.name];
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  DroneTutorialCollectionViewCell.m
//  DroneTutorialPage
//
//  Created by JSH on 2020/9/27.
//  Copyright © 2020 JSH. All rights reserved.
//

#import "DroneTutorialCollectionViewCell.h"
#import <SDWebImage.h>
@implementation DroneTutorialCollectionViewCell
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.contentView.layer.cornerRadius = 8;
        self.contentView.layer.masksToBounds = YES;

        UIImageView * thumbnailImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame),CGRectGetHeight(self.frame))];
        self.thumbnailImage = thumbnailImage;
        [self.contentView addSubview:thumbnailImage];
    }
    return self;
}

- (void)setConfig:(HCTutorial *)tutorial
{
    [self.thumbnailImage sd_setImageWithURL:[NSURL URLWithString:tutorial.thumbnail]
                 placeholderImage:[UIImage imageNamed:@"loading.png"]];
    NSString *webVideoPath = tutorial.download;
    NSURL *webVideoUrl = [NSURL URLWithString:webVideoPath];
    self.webVideoUrl = webVideoUrl;
    AVPlayer *avPlayer = [[AVPlayer alloc] initWithURL:self.webVideoUrl];
    self.avPlayer = avPlayer;
    AVPlayerViewController *avPlayerVC =[[AVPlayerViewController alloc] init];
    self.avPlayerVC = avPlayerVC;
    avPlayerVC.player = avPlayer;
    avPlayerVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame),CGRectGetHeight(self.frame));
    [self.contentView addSubview:avPlayerVC.view];
}
@end

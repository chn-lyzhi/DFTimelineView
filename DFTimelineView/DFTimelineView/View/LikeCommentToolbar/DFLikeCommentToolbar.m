//
//  DFLikeCommentToolbar.m
//  DFTimelineView
//
//  Created by Allen Zhong on 15/9/29.
//  Copyright (c) 2015年 Datafans, Inc. All rights reserved.
//

#import "DFLikeCommentToolbar.h"

@interface DFLikeCommentToolbar()

@property (nonatomic, strong) UIButton *likeButton;

@property (nonatomic, strong) UIButton *commentButton;

@property (nonatomic, strong) UIButton *collectButton;


@end


@implementation DFLikeCommentToolbar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initView];
    }
    return self;
}

-(void) initView
{
    
    self.userInteractionEnabled = YES;
    
    UIImage *image = [UIImage imageNamed:@"AlbumOperateMoreViewBkg"];
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
    self.image = image;
    
    CGFloat x, y, width, height;
    
    x=0;
    y=0;
    width = self.frame.size.width/3;
    height = self.frame.size.height;
    
    _collectButton = [self getButton:CGRectMake(x, y, width, height) title:@"收藏" image:@""];
    [_collectButton addTarget:self action:@selector(onCollect:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_collectButton];
    
    x = width;
    _likeButton = [self getButton:CGRectMake(x, y, width, height) title:@"赞" image:@"AlbumLike"];
    [_likeButton addTarget:self action:@selector(onLike:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_likeButton];
    
    //分割线
    CGFloat lineHeight = height -16;
    CGFloat liney = (self.frame.size.height - lineHeight)/2;
    CGFloat linewidth = 1.0/[[UIScreen mainScreen]scale];
    UIView *dividerAnother = [[UIView alloc] initWithFrame:CGRectMake(x, liney, linewidth, lineHeight)];
    dividerAnother.backgroundColor = [UIColor whiteColor];
    [self addSubview:dividerAnother];

    x += width;
    _commentButton = [self getButton:CGRectMake(x, y, width, height) title:@"评" image:@"AlbumComment"];
    [_commentButton addTarget:self action:@selector(onComment:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_commentButton];
    
    //分割线
    UIView *divider = [[UIView alloc] initWithFrame:CGRectMake(x, liney, linewidth, lineHeight)];
    divider.backgroundColor = [UIColor whiteColor];
    [self addSubview:divider];
    
}

-(UIButton *) getButton:(CGRect) frame title:(NSString *) title image:(NSString *) image
{
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    //btn.backgroundColor = [UIColor redColor];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 6, 0, 0)];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    return btn;
}



-(void) onLike:(id) sender
{
    if (_delegate != nil && [_delegate respondsToSelector:@selector(onLike)]) {
        [_delegate onLike];
    }
}


-(void) onComment:(id) sender
{
    if (_delegate != nil && [_delegate respondsToSelector:@selector(onComment)]) {
        [_delegate onComment];
    }
}

- (void)onCollect:(UIButton *)sender {
    if (_delegate != nil && [_delegate respondsToSelector:@selector(onCollect)]) {
        [_delegate onCollect];
    }
}

@end

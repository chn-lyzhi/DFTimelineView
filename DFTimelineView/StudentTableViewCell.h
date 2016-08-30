//
//  StudentTableViewCell.h
//  DFTimelineView
//
//  Created by 刘一智 on 16/8/5.
//  Copyright © 2016年 Datafans, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentTableViewCell : UITableViewCell

@property (nonatomic) UIImageView *avatarImageView;
@property (nonatomic) UILabel *nameLabel;

@property (nonatomic) UIImageView *starImageView;
@property (nonatomic) UILabel *starLabel;
@property (nonatomic) UIImageView *lookImageView;
@property (nonatomic) UILabel *lookLabel;

@property (nonatomic) UILabel *professionalLabel;

@property (nonatomic) UILabel *commentLabel;
@property (nonatomic) UILabel *fuckCommentLabel;

@property (nonatomic) UIView *lineView;

@property (nonatomic) UIView *tagView;

@end

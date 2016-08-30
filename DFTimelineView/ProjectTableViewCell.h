//
//  ProjectTableViewCell.h
//  DFTimelineView
//
//  Created by 刘一智 on 16/8/5.
//  Copyright © 2016年 Datafans, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProjectTableViewCell : UITableViewCell

@property (nonatomic) UIView *backView;

@property (nonatomic) UIImageView *avatarImageView;
@property (nonatomic) UIImageView *projectTypeImageView;
@property (nonatomic) UILabel *projectTypeLabel;

@property (nonatomic) UILabel *nameLabe;
@property (nonatomic) UIImageView *typeIamgeView;

@property (nonatomic) UILabel *peopleNumberLabel;

@property (nonatomic) UILabel *detailLabel;

@property (nonatomic) UIView *lineView;

@property (nonatomic) UIImageView *timeImageView;
@property (nonatomic) UILabel *timeLabel;
@property (nonatomic) UIImageView *locationImageView;
@property (nonatomic) UILabel *locationLabel;
@property (nonatomic) UIImageView *lookImageView;
@property (nonatomic) UILabel *lookLabel;

@property (nonatomic) UIButton *stateButton;
@property (nonatomic) UILabel *deadlineLabel;

@end

//
//  TeacherTableViewCell.m
//  DFTimelineView
//
//  Created by 刘一智 on 16/8/5.
//  Copyright © 2016年 Datafans, Inc. All rights reserved.
//

#import "TeacherTableViewCell.h"
#import <Masonry.h>

@implementation TeacherTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (void)setupViews {
    self.backView = [UIView new];
    self.avatarImageView = [UIImageView new];
    self.nameLabel = [UILabel new];
    self.starImageView = [UIImageView new];
    self.professionalLabel = [UILabel new];
    self.tagView = [UIView new];
    
    [self.contentView addSubview:self.backView];
    [self.backView addSubview:self.avatarImageView];
    [self.backView addSubview:self.nameLabel];
    [self.backView addSubview:self.starImageView];
    [self.backView addSubview:self.professionalLabel];
    [self.backView addSubview:self.tagView];
}

- (void)setupViewsLayout {
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
    
    [self.avatarImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.backView.mas_leading).offset(8);
        make.top.equalTo(self.backView.mas_top).offset(8);
        make.bottom.equalTo(self.backView.mas_bottom).offset(-8);
        make.size.mas_equalTo(CGSizeMake(65, 65));
    }];
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.avatarImageView.mas_centerY).offset(-4);
        make.leading.equalTo(self.avatarImageView.mas_trailing).offset(8);
    }];
    
    [self.starImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.nameLabel.mas_trailing).offset(8);
        make.top.bottom.equalTo(self.nameLabel);
    }];
    
    [self.professionalLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.starImageView.mas_trailing);
        make.top.bottom.equalTo(self.nameLabel);
        make.trailing.equalTo(self.backView.mas_trailing).offset(-8);
    }];
    
    [self.tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.avatarImageView.mas_centerY).offset(4);
        make.leading.equalTo(self.nameLabel.mas_leading);
        make.trailing.equalTo(self.backView).offset(-8);
    }];
}

@end

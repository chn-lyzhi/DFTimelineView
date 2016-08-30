//
//  ProjectTableViewCell.m
//  DFTimelineView
//
//  Created by 刘一智 on 16/8/5.
//  Copyright © 2016年 Datafans, Inc. All rights reserved.
//

#import "ProjectTableViewCell.h"

@implementation ProjectTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (void)setupViews {
    self.backView = [UIView new];
    
    self.avatarImageView = [UIImageView new];
    self.projectTypeImageView = [UIImageView new];
    self.projectTypeLabel = [UILabel new];
    
    self.nameLabe = [UILabel new];
    self.typeIamgeView = [UIImageView new];
    
    self.peopleNumberLabel = [UILabel new];
    self.detailLabel = [UILabel new];
    
    self.lineView = [UIView new];
    
    self.timeImageView = [UIImageView new];
    self.timeLabel = [UILabel new];
    self.locationImageView = [UIImageView new];
    self.locationLabel = [UILabel new];
    
}

- (void)setupViewsLayout {
    
}

@end

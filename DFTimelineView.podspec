
Pod::Spec.new do |s|


  s.name         = "DFTimelineView"
  s.version      = "1.3.3"
  s.summary      = "仿微信朋友圈时间轴 支持发送图文 短视频 赞 评论 图片大图浏览 视频预览"

  s.homepage     = "https://github.com/anyunzhong/DFTimelineView"

  s.license      = "Apache 2.0"

  s.author       = { "Fast-Dev-Kit" => "2642754767@qq.com" }

  s.platform     = :ios, "7.0"


  s.source       = { :git => "https://github.com/anyunzhong/DFTimelineView.git", :tag => "1.3.3" }


  s.source_files = "DFTimelineView/DFTimelineView/**/*.{h,m}"

  s.resources = "DFTimelineView/DFTimelineView/Resource/*.png"


  s.requires_arc = true

  s.dependency 'DFCommon', '~> 1.4.3'
  s.dependency 'AFNetworking', '~> 3.1.0'
  s.dependency 'SDWebImage', '~> 3.8.1'
  s.dependency 'FMDB', '~> 2.6.2'
  s.dependency 'MBProgressHUD', '~> 0.9.1'
  s.dependency 'MLLabel', '~> 1.9.1'

  s.dependency 'MJRefresh', '~> 3.1.7'
  s.dependency 'ODRefreshControl', '~> 1.2'
  s.dependency 'MJPhotoBrowser', '~> 1.0.2'
  s.dependency 'MMPopupView', '~> 1.7.2'
  s.dependency 'TZImagePickerController', '~> 1.4.5'

end

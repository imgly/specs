Pod::Spec.new do |s|
  s.name                = 'VideoEditorSDKSource'
  s.swift_version       = '5.6'
  s.version             = '11.2.0'
  s.license             = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.summary             = 'Integrate the video editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://img.ly/video-sdk'
  # s.social_media_url    = 'https://twitter.com/videoeditorsdk'
  s.authors             = { 'IMG.LY GmbH' => 'contact@img.ly' }

  s.cocoapods_version   = '>= 1.10.0'
  s.platform            = :ios, '13.0'
  s.source              = { :git => 'https://github.com/imgly/pesdk-ios.git', :tag => s.version.to_s }

  s.module_name         = 'VideoEditorSDK'
  s.source_files        = ['VideoEditorSDK/**/*.{h,m,mm,swift}', 'Common/**/*.{h,m,mm,swift}']

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0, 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'VIDEOEDITORSDK' }
  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'ImageIO', 'CoreServices', 'Photos', 'UIKit', 'SwiftUI'
  s.requires_arc        = true
  
  s.dependency 'imglyKitSource', s.version.to_s
end

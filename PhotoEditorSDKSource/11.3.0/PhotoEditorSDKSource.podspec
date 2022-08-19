Pod::Spec.new do |s|
  s.name                = 'PhotoEditorSDKSource'
  s.swift_version       = '5.6'
  s.version             = '11.3.0'
  s.license             = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.summary             = 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://img.ly/photo-sdk'
  # s.social_media_url    = 'https://twitter.com/photoeditorsdk'
  s.authors             = { 'IMG.LY GmbH' => 'contact@img.ly' }

  s.cocoapods_version   = '>= 1.10.0'
  s.platform            = :ios, '13.0'
  s.source              = { :git => 'https://github.com/imgly/pesdk-ios.git', :tag => s.version.to_s }

  s.module_name         = 'PhotoEditorSDK'
  s.source_files        = ['PhotoEditorSDK/**/*.{h,m,mm,swift}', 'Common/**/*.{h,m,mm,swift}']

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0, 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHOTOEDITORSDK' }
  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'ImageIO', 'CoreServices', 'Photos', 'UIKit', 'SwiftUI'
  s.requires_arc        = true

  s.dependency 'imglyKitSource', s.version.to_s
end

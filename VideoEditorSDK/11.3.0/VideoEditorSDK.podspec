Pod::Spec.new do |s|
  s.name                = 'VideoEditorSDK'
  s.swift_version       = '5.6'
  s.version             = '11.3.0'
  s.license             = { :type => 'Commercial', :file => 'VideoEditorSDK.xcframework/VideoEditorSDK-LICENSE.md' }
  s.summary             = 'Integrate the video editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://img.ly/video-sdk'
  # s.social_media_url    = 'https://twitter.com/videoeditorsdk'
  s.authors             = { 'IMG.LY GmbH' => 'contact@img.ly' }

  s.cocoapods_version   = '>= 1.10.0'
  s.platform            = :ios, '13.0'
  s.source              = { :http => "https://releases.photoeditorsdk.com/ios/VideoEditorSDK-#{s.version.to_s}.xcframework.zip" }

  s.vendored_frameworks = 'VideoEditorSDK.xcframework'

  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'ImageIO', 'CoreServices', 'Photos', 'UIKit', 'SwiftUI'
  s.requires_arc        = true

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0 }

  s.dependency 'imglyKit', s.version.to_s
end

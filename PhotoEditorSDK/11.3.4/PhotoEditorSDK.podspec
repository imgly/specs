Pod::Spec.new do |s|
  s.name                = 'PhotoEditorSDK'
  s.swift_version       = '5.6'
  s.version             = '11.3.4'
  s.license             = { :type => 'Commercial', :file => 'PhotoEditorSDK.xcframework/PhotoEditorSDK-LICENSE.md' }
  s.summary             = 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://img.ly/photo-sdk'
  # s.social_media_url    = 'https://twitter.com/photoeditorsdk'
  s.authors             = { 'IMG.LY GmbH' => 'contact@img.ly' }

  s.cocoapods_version   = '>= 1.10.0'
  s.platform            = :ios, '13.0'
  s.source              = { :http => "https://releases.photoeditorsdk.com/ios/PhotoEditorSDK-#{s.version.to_s}.xcframework.zip" }

  s.vendored_frameworks = 'PhotoEditorSDK.xcframework'

  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'ImageIO', 'CoreServices', 'Photos', 'UIKit', 'SwiftUI'
  s.requires_arc        = true

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0 }

  s.dependency 'imglyKit', s.version.to_s
end

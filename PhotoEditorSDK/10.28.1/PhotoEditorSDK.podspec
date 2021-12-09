Pod::Spec.new do |s|
  s.name                = 'PhotoEditorSDK'
  s.swift_version       = '5.3'
  s.version             = '10.28.1'
  s.license             = { :type => 'Commercial', :file => 'PhotoEditorSDK.xcframework/PhotoEditorSDK-LICENSE.md' }
  s.summary             = 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://www.photoeditorsdk.com'
  # s.social_media_url    = 'https://twitter.com/photoeditorsdk'
  s.authors             = { 'img.ly GmbH' => 'contact@img.ly' }

  s.platform            = :ios, '9.0'
  s.source              = { :http => "https://releases.photoeditorsdk.com/ios/PhotoEditorSDK-#{s.version.to_s}.xcframework.zip" }

  s.vendored_frameworks = 'PhotoEditorSDK.xcframework'

  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
  s.requires_arc        = true

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0 }

  s.dependency 'imglyKit', s.version.to_s
end

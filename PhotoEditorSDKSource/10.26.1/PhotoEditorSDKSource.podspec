Pod::Spec.new do |s|
  s.name                = 'PhotoEditorSDKSource'
  s.swift_version       = '5.3'
  s.version             = '10.26.1'
  s.license             = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.summary             = 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://www.photoeditorsdk.com'
  # s.social_media_url    = 'https://twitter.com/photoeditorsdk'
  s.authors             = { 'img.ly GmbH' => 'contact@img.ly' }

  s.platform            = :ios, '9.0'
  s.source              = { :git => 'https://github.com/imgly/pesdk-ios.git', :tag => s.version.to_s }

  s.module_name         = 'PhotoEditorSDK'
  s.source_files        = ['PhotoEditorSDK/**/*.{h,m,mm,swift}', 'Common/**/*.{h,m,mm,swift}']

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0, 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHOTOEDITORSDK' }
  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
  s.requires_arc        = true

  s.dependency 'imglyKitSource', s.version.to_s
end

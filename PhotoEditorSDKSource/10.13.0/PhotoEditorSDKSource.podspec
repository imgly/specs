Pod::Spec.new do |s|
  s.name                = 'PhotoEditorSDKSource'
  s.swift_version       = '5.1'
  s.version             = '10.13.0'
  s.license             = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.summary             = 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://www.photoeditorsdk.com'
  s.social_media_url    = 'https://twitter.com/photoeditorsdk'
  s.authors             = { 'img.ly GmbH' => 'contact@img.ly' }

  s.platform            = :ios, '8.0'
  s.source              = { :git => 'https://github.com/imgly/pesdk-ios.git', :tag => s.version.to_s }

  s.module_name         = 'PhotoEditorSDK'
  s.source_files        = ['PhotoEditorSDK/**/*.{h,m,mm,swift,metal}', 'Common/**/*.{h,m,mm,swift,metal}']

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0, 'MTL_COMPILER_FLAGS' => '-mios-version-min=12.0 --target=air64-apple-ios12.0 -fcikernel', 'MTLLINKER_FLAGS' => '-cikernel', 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'PHOTOEDITORSDK' }
  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
  s.requires_arc        = true

  s.dependency 'imglyKitSource', s.version.to_s
end

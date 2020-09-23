Pod::Spec.new do |s|
  s.name                = 'VideoEditorSDK'
  s.swift_version       = '5.3'
  s.version             = '10.21.0'
  s.license             = { :type => 'Commercial', :file => 'VideoEditorSDK.framework/VideoEditorSDK-LICENSE.md' }
  s.summary             = 'Integrate the video editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://www.videoeditorsdk.com'
  s.social_media_url    = 'https://twitter.com/videoeditorsdk'
  s.authors             = { 'img.ly GmbH' => 'contact@img.ly' }

  s.platform            = :ios, '9.0'
  s.source              = { :http => "https://github.com/imgly/vesdk-ios-build/releases/download/#{s.version.to_s}/VideoEditorSDK.zip" }

  s.preserve_paths      = 'VideoEditorSDK.framework', 'VideoEditorSDK.framework.dSYM'
  s.public_header_files = 'VideoEditorSDK.framework/Headers/*.h'
  s.source_files        = 'VideoEditorSDK.framework/Headers/*.h'
  s.vendored_frameworks = 'VideoEditorSDK.framework'

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0 }
  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
  s.requires_arc        = true

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'imglyKit', s.version.to_s
end

Pod::Spec.new do |s|
  s.name                = 'PhotoEditorSDK'
  s.swift_version       = '5.3'
  s.version             = '10.22.0'
  s.license             = { :type => 'Commercial', :file => 'PhotoEditorSDK.framework/PhotoEditorSDK-LICENSE.md' }
  s.summary             = 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
  s.homepage            = 'https://www.photoeditorsdk.com'
  # s.social_media_url    = 'https://twitter.com/photoeditorsdk'
  s.authors             = { 'img.ly GmbH' => 'contact@img.ly' }

  s.platform            = :ios, '9.0'
  s.source              = { :http => "https://github.com/imgly/pesdk-ios-build/releases/download/#{s.version.to_s}/PhotoEditorSDK.zip" }

  s.preserve_paths      = 'PhotoEditorSDK.framework', 'PhotoEditorSDK.framework.dSYM'
  s.public_header_files = 'PhotoEditorSDK.framework/Headers/*.h'
  s.source_files        = 'PhotoEditorSDK.framework/Headers/*.h'
  s.vendored_frameworks = 'PhotoEditorSDK.framework'

  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
  s.requires_arc        = true

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'COMPRESS_PNG_FILES' => 0 }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'imglyKit', s.version.to_s
end

Pod::Spec.new do |s|
    s.name                = 'imglyKit'
    s.swift_version       = '5.1'
    s.version             = '10.12.0'
    s.license             = { :type => 'Commercial', :file => 'PhotoEditorSDK/ImglyKit.framework/ImglyKit-LICENSE.md' }
    s.summary             = 'The creative engine of tomorrow\'s world!'
    s.homepage            = 'https://www.img.ly'
    s.social_media_url    = 'https://twitter.com/imgly'
    s.authors             = { 'img.ly GmbH' => 'contact@img.ly' }
  
    s.platform            = :ios, '8.0'
    s.source              = { :http => "https://github.com/imgly/pesdk-ios-build/releases/download/#{s.version.to_s}/PhotoEditorSDK.zip" }
  
    s.module_name         = 'ImglyKit'
    s.preserve_paths      = 'PhotoEditorSDK/ImglyKit.framework', 'PhotoEditorSDK/ImglyKit.framework.dSYM'
    s.public_header_files = 'PhotoEditorSDK/ImglyKit.framework/Headers/*.h'
    s.source_files        = 'PhotoEditorSDK/ImglyKit.framework/Headers/*.h'
    s.vendored_frameworks = 'PhotoEditorSDK/ImglyKit.framework'
  
    s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0 }
    s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
    s.requires_arc        = true
  end
  

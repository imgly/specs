Pod::Spec.new do |s|
  s.name                = 'imglyKit'
  s.swift_version       = '5.6'
  s.version             = '11.8.1'
  s.license             = { :type => 'Commercial', :file => 'ImglyKit.xcframework/ImglyKit-LICENSE.md' }
  s.summary             = 'The creative engine of tomorrow\'s world!'
  s.homepage            = 'https://img.ly'
  # s.social_media_url    = 'https://twitter.com/imgly'
  s.authors             = { 'IMG.LY GmbH' => 'contact@img.ly' }

  s.cocoapods_version   = '>= 1.10.0'
  s.platform            = :ios, '13.0'
  s.source              = { :http => "https://releases.photoeditorsdk.com/ios/ImglyKit-#{s.version.to_s}.xcframework.zip" }

  s.vendored_frameworks = 'ImglyKit.xcframework'

  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'ImageIO', 'CoreServices', 'Photos', 'UIKit', 'SwiftUI'
  s.requires_arc        = true

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0 }
end

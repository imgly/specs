Pod::Spec.new do |s|
  s.name                = 'imglyKitSource'
  s.swift_version       = '5.1'
  s.version             = '10.15.0'
  s.license             = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.summary             = 'The creative engine of tomorrow\'s world!'
  s.homepage            = 'https://www.photoeditorsdk.com'
  s.authors             = { 'img.ly GmbH' => 'contact@img.ly' }

  s.platform            = :ios, '8.0'
  s.source              = { :git => 'https://github.com/imgly/pesdk-ios.git', :tag => s.version.to_s }

  s.module_name         = 'ImglyKit'
  s.source_files        = ['ImglyKit/**/*.{h,m,mm,swift,metal}', 'Common/**/*.{h,m,mm,swift,metal}']
  s.resources           = ['Resources/Assets/*', 'Resources/en.lproj/*', 'Resources/Filter Responses/*.png', 'Resources/Fonts/*', 'Resources/Kernels/*', 'Resources/Shaders/*']

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0, 'MTL_COMPILER_FLAGS' => '-mios-version-min=12.0 --target=air64-apple-ios12.0 -fcikernel', 'MTLLINKER_FLAGS' => '-cikernel', 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'IMGLYKIT' }
  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
  s.requires_arc        = true
end

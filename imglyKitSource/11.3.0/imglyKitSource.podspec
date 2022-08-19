Pod::Spec.new do |s|
  s.name                = 'imglyKitSource'
  s.swift_version       = '5.6'
  s.version             = '11.3.0'
  s.license             = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.summary             = 'The creative engine of tomorrow\'s world!'
  s.homepage            = 'https://img.ly'
  # s.social_media_url    = 'https://twitter.com/imgly'
  s.authors             = { 'IMG.LY GmbH' => 'contact@img.ly' }

  s.cocoapods_version   = '>= 1.10.0'
  s.platform            = :ios, '13.0'
  s.source              = { :git => 'https://github.com/imgly/pesdk-ios.git', :tag => s.version.to_s }

  s.module_name         = 'ImglyKit'
  s.source_files        = ['ImglyKit/**/*.{h,m,mm,swift}', 'Common/**/*.{h,m,mm,swift}']
  s.resources           = ['Resources/Assets/*', 'Resources/en.lproj/*', 'Resources/Filter Responses/*.png', 'Resources/Fonts/*']

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0, 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'IMGLYKIT' }
  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'ImageIO', 'CoreServices', 'Photos', 'UIKit', 'SwiftUI'
  s.requires_arc        = true
  s.preserve_paths      = 'ImglyKit/**/*.ci.metal'
  s.script_phase        = { 
                            :name => 'Core Image Metal Compiler', 
                            :script => 'xcrun metal -c ${MTL_COMPILER_FLAGS} -fcikernel "${SCRIPT_INPUT_FILE_0}" -o "${SCRIPT_OUTPUT_FILE_0}"', 
                            :input_files => ['${PODS_TARGET_SRCROOT}/ImglyKit/Backend/Rendering/Kernels.ci.metal'], 
                            :output_files => ['${DERIVED_FILE_DIR}/Kernels.ci.air'] ,
                            :execution_position => :before_compile
                          }, {
                            :name => 'Core Image Metal Linker', 
                            :script => 'xcrun metallib -cikernel "${SCRIPT_INPUT_FILE_0}" -o "${SCRIPT_OUTPUT_FILE_0}"', 
                            :input_files => ['${DERIVED_FILE_DIR}/Kernels.ci.air'], 
                            :output_files => ['${METAL_LIBRARY_OUTPUT_DIR}/Kernels.ci.metallib'],
                            :execution_position => :before_compile
                          }
end

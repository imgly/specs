Pod::Spec.new do |s|
  s.name                = 'imglyKitSource'
  s.swift_version       = '5.3'
  s.version             = '10.28.0'
  s.license             = { :type => 'Commercial', :file => 'LICENSE.md' }
  s.summary             = 'The creative engine of tomorrow\'s world!'
  s.homepage            = 'https://www.photoeditorsdk.com'
  s.authors             = { 'img.ly GmbH' => 'contact@img.ly' }

  s.platform            = :ios, '9.0'
  s.source              = { :git => 'https://github.com/imgly/pesdk-ios.git', :tag => s.version.to_s }

  s.module_name         = 'ImglyKit'
  s.source_files        = ['ImglyKit/**/*.{h,m,mm,swift}', 'Common/**/*.{h,m,mm,swift}']
  s.resources           = ['Resources/Assets/*', 'Resources/en.lproj/*', 'Resources/Filter Responses/*.png', 'Resources/Fonts/*', 'Resources/Kernels/*', 'Resources/Shaders/*']

  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0, 'MTL_COMPILER_FLAGS' => '-mios-version-min=12.0 --target=air64-apple-ios12.0', 'MTL_COMPILER_FLAGS[sdk=macosx*]' => '', 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'IMGLYKIT' }
  s.frameworks          = 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
  s.requires_arc        = true
  s.preserve_paths      = 'ImglyKit/**/*.ci.metal'
  s.script_phase        = { 
                            :name => 'Core Image Metal Compiler', 
                            :script => 'xcrun metal -c -I ${MTL_HEADER_SEARCH_PATHS} ${MTL_COMPILER_FLAGS} -fcikernel "${SCRIPT_INPUT_FILE_0}" -o "${SCRIPT_OUTPUT_FILE_0}"', 
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

Pod::Spec.new do |s|
	s.name              = 'imglyKit'
	s.version           = '6.5.2'
	s.license           = { :type => 'Commercial', :file => "pesdk-ios-build-#{s.version.to_s}/imglyKit.framework/imglyKit-LICENSE" }
	s.summary           = 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
	s.homepage          = 'https://www.photoeditorsdk.com'
	s.social_media_url  = 'https://twitter.com/photoeditorsdk'
	s.authors           = { '9elements GmbH' => 'contact@9elements.com' }

	s.platform          = :ios, '9.0'
	s.source            = { :http => "https://github.com/imgly/pesdk-ios-build/archive/#{s.version.to_s}.zip" }

	s.preserve_paths      = "pesdk-ios-build-#{s.version.to_s}/imglyKit.framework"
	s.source_files        = "pesdk-ios-build-#{s.version.to_s}/imglyKit.framework/Headers/*.h"
	s.public_header_files = "pesdk-ios-build-#{s.version.to_s}/imglyKit.framework/Headers/*.h"
	s.vendored_frameworks = "pesdk-ios-build-#{s.version.to_s}/imglyKit.framework"

	s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0 }
	s.frameworks          = 'Accelerate', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
	s.requires_arc = true
end

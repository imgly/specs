Pod::Spec.new do |s|
	s.name              = 'imglyKit'
	s.version           = '6.2.0'
	s.license           = { :type => 'Commercial', :file => 'imglyKit.framework/imglyKit-LICENSE' }
	s.summary           = 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
	s.homepage          = 'https://www.photoeditorsdk.com'
	s.social_media_url  = 'https://twitter.com/photoeditorsdk'
	s.authors           = { '9elements GmbH' => 'contact@9elements.com' }

	s.platform          = :ios, '9.0'
	s.source            = { :http => "https://www.photoeditorsdk.com/downloads/ios/#{s.version.to_s}.zip" }

	s.preserve_paths      = 'imglyKit.framework'
	s.source_files        = 'imglyKit.framework/Headers/*.h'
	s.public_header_files = 'imglyKit.framework/Headers/*.h'
	s.vendored_frameworks = 'imglyKit.framework'

	s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0 }
	s.frameworks          = 'Accelerate', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
	s.requires_arc = true
end

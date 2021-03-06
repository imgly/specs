Pod::Spec.new do |s|
	s.name              	= 'PhotoEditorSDK'
	s.version           	= '8.3.1'
	s.license           	= { :type => 'Commercial', :file => 'PhotoEditorSDK.framework/PhotoEditorSDK-LICENSE.md' }
	s.summary           	= 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
	s.homepage          	= 'https://www.photoeditorsdk.com'
	s.social_media_url  	= 'https://twitter.com/photoeditorsdk'
	s.authors           	= { '9elements GmbH' => 'contact@9elements.com' }

	s.platform         		= :ios, '8.0'
	s.source            	= { :http => "https://github.com/imgly/pesdk-ios-build/releases/download/#{s.version.to_s}/PhotoEditorSDK.zip" }

	s.preserve_paths      	= 'PhotoEditorSDK.framework', 'PhotoEditorSDK.framework.dSYM'
	s.public_header_files 	= 'PhotoEditorSDK.framework/Headers/*.h'
	s.source_files			= 'PhotoEditorSDK.framework/Headers/*.h'
	s.vendored_frameworks 	= 'PhotoEditorSDK.framework'

	s.pod_target_xcconfig 	= { 'COMPRESS_PNG_FILES' => 0 }
	s.frameworks          	= 'Accelerate', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
	s.requires_arc = true
end

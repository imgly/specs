Pod::Spec.new do |s|
	s.name              		= 'imglyKitSource'
	s.version           		= '6.4.0'
	s.license           		= { :type => 'Commercial', :file => 'LICENSE' }
	s.summary           		= 'Integrate the photo editor into your own HTML5, iOS or Android app - in minutes!'
	s.homepage          		= 'https://www.photoeditorsdk.com'
	s.social_media_url  		= 'https://twitter.com/photoeditorsdk'
	s.authors           		= { '9elements GmbH' => 'contact@9elements.com' }

	s.platform          	 	= :ios, '9.0'
	s.source            	 	= { :git => 'https://github.com/imgly/imgly-sdk-ios-private.git', :tag => s.version.to_s }

	s.source_files 				 	= ['imglyKit/**/*.{h,m,swift}']
	s.resources 						= ['Resources/Assets/*', 'Resources/en.lproj/*', 'Resources/Filter Responses/*.png', 'Resources/Fonts/*', 'Resources/Shaders/*', 'Resources/public.pem']

	s.pod_target_xcconfig  	= { 'COMPRESS_PNG_FILES' => 0 }
	s.frameworks           	= 'Accelerate', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMotion', 'CoreText', 'Foundation', 'GLKit', 'ImageIO', 'MobileCoreServices', 'OpenGLES', 'Photos', 'UIKit'
	s.requires_arc 				 	= true
end

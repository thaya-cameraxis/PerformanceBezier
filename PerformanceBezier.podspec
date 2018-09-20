Pod::Spec.new do |s|
  s.name            = "PerformanceBezier"
  s.version         = "1.0.0"
  s.summary         = "A small library to dramatically speed up common operations on UIBezierPath, and also bring its functionality closer to NSBezierPath."
  s.author          = {
      'Adam Wulf' => 'adam.wulf@gmail.com',
  }
  s.homepage        = "https://github.com/adamwulf/PerformanceBezier"
  s.license         = {:type => 'CC BY', :file => 'LICENSE' }

  s.source          = { :git => "https://github.com/thaya-cameraxis/PerformanceBezier.git", :tag => s.version}
  s.source_files    = ['PerformanceBezier/PerformanceBezier.h', 'PerformanceBezier/UIBezierPath*.{h,m}']
  s.private_header_files = 'PerformanceBezier/*_Private.h'
  s.public_header_files = 'PerformanceBezier/*.h'


  s.platform = :ios
  s.ios.deployment_target   = "8.0"

  s.framework = 'Foundation', 'UIKit'
  s.dependency 'JRSwizzle'

  s.requires_arc = false
  s.xcconfig = { 'OTHER_LDFLAGS' => '-lstdc++' }

end

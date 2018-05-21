  
Pod::Spec.new do |s|

  s.name         = "SCLayout"
  s.version      = "2.0.1"
  s.summary      = "Simple layout framework with constraint shortcuts."
  
  s.homepage     = "https://github.com/mevalid/SCLayout"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Mirela" => "mevalid224@gmail.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/mevalid/SCLayout.git", :tag => s.version }
  s.source_files  = "SCLayout", "SCLayout/**/*.{h,m}"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }

end

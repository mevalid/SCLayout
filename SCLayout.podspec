  
Pod::Spec.new do |s|

  s.name         = "SCLayout"
  s.version      = "4.0.0"
  s.summary      = "Simple layout framework with constraint shortcuts."
  
  s.homepage     = "https://github.com/mevalid/SCLayout"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Mirela" => "mevalid224@gmail.com" }
  s.platform     = :ios, "9.0"

  s.swift_version = '4.2'
  s.source       = { :git => "https://github.com/mevalid/SCLayout.git", :tag => s.version }
  s.source_files  = "SCLayout", "SCLayout/**/*.{h,m}"

end

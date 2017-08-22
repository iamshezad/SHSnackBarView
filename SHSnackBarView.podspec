Pod::Spec.new do |s|
  s.name         = "SHSnackBarView"
  s.version      = "1.0.0"
  s.summary      = "Snackbar View library"
  s.description  = "snackbar View library"

  s.homepage     = "https://github.com/iamshezad/SHSnackBarView.git"

  s.license      = "MIT"

  s.author             = { "iamShezad" => "shezadahamed95@gmail.com" }

  s.source       = { :git => "https://github.com/iamshezad/SHSnackBarView.git", :tag => "v#{s.version}" }

  s.source_files  = "SHSnackBarView/*.{swift,h,m}",

  s.ios.deployment_target = '9.0'
 
end
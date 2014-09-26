Pod::Spec.new do |s|
  s.name             = "KTCategories"
  s.version          = "0.0.5"
  s.summary          = "A handful of semi-useful Categories and Classes"

  s.homepage         = "https://github.com/keighl/KTCategories"
  s.license          = 'MIT'
  s.author           = { "keighl" => "keighl@keighl.com" }
  s.source           = { :git => "https://github.com/keighl/KTCategories.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/keighl'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'KTCategories/*'

  s.frameworks = 'UIKit'

end
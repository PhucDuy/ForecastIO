#
# Be sure to run `pod lib lint ForecastIO.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ForecastIO"
  s.version          = "5.1.0"
  s.summary          = "ForecastIO is a Swift library for interfacing with the Dark Sky forecast API."
  s.homepage         = "https://github.com/sxg/ForecastIO"
  s.license          = 'MIT'
  s.author           = { "Satyam Ghodasara" => "sghodas@gmail.com" }
  s.source           = { :git => "https://github.com/sxg/ForecastIO.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/_Satyam_'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true

  s.source_files = 'Source/*.swift'
end

#
# Be sure to run `pod lib lint SkyUtilsPod.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SkyUtilsPod"
  s.version          = "0.1.3"
  s.summary          = "A short description of SkyUtilsPod."
  s.description      = <<-DESC
                       An optional longer description of SkyUtilsPod

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/SkyUtilsPod"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "zhujin001032" => "zhujin001xb@163.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/SkyUtilsPod.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SkyUtilsPod' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # Use to auto layout UI, add by Mark 2015-11-27
  # s.dependency 'Masonry', '~> 0.6.2'
  # Use to save device ID and others
  s.dependency 'SSKeychain','~> 1.4.0'

end

#
# Be sure to run `pod lib lint AMProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMProgressHUD'
  s.version          = '1.1.0'
  s.summary          = 'A gif progress HUD for iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    A gif progress HUD to display a progress of an ongoing task.
                       DESC

  s.homepage         = 'https://github.com/Abedalkareem/AMProgressHUD'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Abedalkareem' => 'abedalkareem.omreyh@yahoo.com' }
  s.source           = { :git => 'https://github.com/Abedalkareem/AMProgressHUD.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'
  s.social_media_url = 'https://twitter.com/AbedalkareemOmr'

  s.ios.deployment_target = '14.0'

  s.source_files = 'AMProgressHUD/AMProgressHUD/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AMProgressHUD' => ['AMProgressHUD/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

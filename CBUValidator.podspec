#
# Be sure to run `pod lib lint CBUValidator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CBUValidator'
  s.version          = '0.1.1'
  s.summary          = 'This library validates an Argentinian CBU (Clave Bancaria Uniforme) number.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This library validates an Argentinian CBU (Clave Bancaria Uniforme) number. It checks for the two validator digits using the corresponding algorithm.
                       DESC

  s.homepage         = 'https://github.com/LeandroHub/CBUValidator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Leandro Fournier' => 'leandro.fournier@gmail.com' }
  s.source           = { :git => 'https://github.com/LeandroHub/CBUValidator.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '4.0'
  s.ios.deployment_target = '8.0'

  s.source_files = 'CBUValidator/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CBUValidator' => ['CBUValidator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

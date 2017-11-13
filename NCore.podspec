#
# Be sure to run `pod lib lint NCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NCore'
  s.version          = '0.1.2'
  s.summary          = 'Just an exaple podspec to learn cocoapods and then expand on ones knowledge'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Just an exaple podspec to learn cocoapods and then expand on ones knowledge. In Future this may expand to add and extend missing or helper methods in various swift classes.
                       DESC

  s.homepage         = 'https://github.com/neerajgoyal12/NCore'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'neerajgoyal12' => 'neerajgoyal12@gmail.com' }
  s.source           = { :git => 'https://github.com/neerajgoyal12/NCore.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NCore/Classes/**/*'
  
#s.resource_bundles = {
#    'NCore' => ['NCore/Assets/*.png']
# }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'MapKit', 'Foundation', 'SystemConfiguration', 'CoreText', 'QuartzCore', 'Security', 'UIKit', 'Foundation', 'CoreGraphics','CoreTelephony', 'FirebaseCore', 'FirebaseRemoteConfig', 'FirebaseInstanceID', 'FirebaseAnalytics', 'FirebaseABTesting', 'FirebaseCoreDiagnostics', 'FirebaseNanoPB'
  s.libraries = 'c++', 'sqlite3', 'z'
  # s.vendored_framework = 'Firebase'
  s.dependency 'Firebase'
  s.dependency 'Firebase/Core'
  s.dependency 'Firebase/RemoteConfig'
#  s.dependency 'GoogleToolboxForMac'
#  s.dependency 'nanopb'
#  s.dependency 'Protobuf'
#  s.dependency 'FirebaseInstanceID'
#  s.dependency 'FirebaseAnalytics'
#  s.dependency 'FirebaseABTesting'

  s.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/Firebase $(PODS_ROOT)/FirebaseCore/Frameworks $(PODS_ROOT)/FirebaseRemoteConfig/Frameworks $(PODS_ROOT)/FirebaseInstanceID/Frameworks $(PODS_ROOT)/FirebaseAnalytics/Frameworks $(PODS_ROOT)/FirebaseABTesting/Frameworks'
  }

  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }
end

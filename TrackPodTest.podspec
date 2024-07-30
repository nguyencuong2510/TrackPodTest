#
#  Be sure to run `pod spec lint TrackPodTest.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.platform     = :ios
  spec.name         = "TrackPodTest"
  spec.static_framework = true
  spec.ios.deployment_target = '13.0'
  spec.version      = "0.1.5"
  spec.summary      = "A short description of TrackPodTest."
  
  spec.description  = "this is desc"

  spec.homepage     = "https://github.com/nguyencuong2510/TrackPodTest"

 spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "nguyen cuong" => "cuong251095@gmail.com" }

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/nguyencuong2510/TrackPodTest.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "TrackPodTest/**/*.{swift}"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.resources = 'TrackPodTest/**/*.{storyboard,xib,xcassets}'
  spec.resource_bundle = {'TrackPodTest' => ['TrackPodTest/**/*.{png,jpeg,jpg}'] }


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.requires_arc = true
  spec.framework = "UIKit"
  spec.framework = "Foundation"
  spec.dependency 'Google-Mobile-Ads-SDK', '~> 11.7.0'
  spec.dependency 'GoogleUserMessagingPlatform', '~> 2.5.0'
  
  spec.swift_version = "5.0"

end

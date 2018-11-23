#
#  Be sure to run `pod spec lint GradientView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.name         = "GradientView"
  s.version      = "0.0.1"
  s.summary      = "GradientView class for draw gradient"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = "https://github.com/Hovo-Infinity/GradientView"
  s.author       = { "Hovo" => "stepanyan.hovo.95@gmail.com" }
  s.source       = { :git => "https://github.com/Hovo-Infinity/GradientView.git",
                     :tag => "#{s.version}" }
  s.framework  = "UIKit"

  s.source_files  = "GradientView/**/*.{swift}"
  s.exclude_files = "Classes/Exclude"
  s.swift_version = "4.2"

end

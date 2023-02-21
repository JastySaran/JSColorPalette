Pod::Spec.new do |s|
s.name             = "JSColorPalette"
s.version          = "0.1.0"
s.summary          = "Custom pod creation for iOS"
s.description      = "Helps to manage color theme for app."
s.homepage         = "https://github.com/JastySaran"
s.license          = { :type => "MIT", :file => "LICENSE" }
s.author           = "Jasty Saran"
s.source           = {
  :git => "https://github.com/JastySaran/JSColorPalette.git",
  :tag => "#{s.version}"
}
s.platform      = :ios, "11.0"
s.swift_version = "4.2"
s.source_files = 'JSColorPalette/**/*.{h,m,swift}'
s.public_header_files = "JSColorPalette/**/*.h"
end

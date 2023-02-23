Pod::Spec.new do |s|
s.name             = "JSColorPalette"
s.version          = "0.1.1"
s.summary          = "Helps you to change color theme of the app"
s.description      = "Color Palette have six different color themes which are  defined as Hydra,Earth,Aura,Leo,Twilight,Heart.Each color theme will have two different colors i.e Action color which can be used for specific actions in the app and heading color basically used for different headings, titles and labels at different parts of the app"
s.homepage         = "https://github.com/JastySaran/JSColorPalette"
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


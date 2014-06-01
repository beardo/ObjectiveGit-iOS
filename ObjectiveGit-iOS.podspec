#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "ObjectiveGit-iOS"
  s.version          = "0.0.4"
  s.summary          = "ObjectiveGit modified for use on iOS"
  s.description      = <<-DESC
                       ObjectiveGit modified for use on iOS

                       DESC
  s.homepage         = "https://github.com/beardo/ObjectiveGit-iOS.git"
  #s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Daniel Sullivan" => "code+git@danielsullivan.me" }
  #s.source           = { :git => "https://github.com/beardo/ObjectiveGit-iOS.git", :tag => s.version.to_s }
  s.source           = { :git => "https://github.com/beardo/ObjectiveGit-iOS.git", tag: s.version.to_s }
  #s.social_media_url = 'https://twitter.com/EXAMPLE'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc = true
  s.dependency 'libextobjc'

  s.prepare_command = <<-CMD
                        find Classes/ios/ -exec sed -i '' 's/<ObjectiveGit\\/\\(.*\\)>/"\\1"/g' {} \\;
                      CMD

  s.source_files = 'Classes/**/*'
  #s.ios.exclude_files = 'Classes/osx'
  #s.osx.exclude_files = 'Classes/ios'
  s.public_header_files = 'Classes/**/*.h'
  #s.dependency 'libgit2-iOS'
end

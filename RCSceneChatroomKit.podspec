#
# Be sure to run `pod lib lint ChatRoomScene.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RCSceneChatroomKit'
  s.version          = '0.0.3.3'
  s.summary          = 'Scene ChatRoom for messages.'

  s.description      = <<-DESC
Chatroom Scene Message Kit.
                       DESC

  s.homepage         = 'https://github.com/rongcloud'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shaoshuai' => 'shaoshuai@rongcloud.cn' }
  s.source           = { :git => 'https://github.com/rongcloud-community/rongcloud-scene-chatroomkit-ios', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'VALID_ARCHS' => 'arm64 x86_64',
  }

  s.source_files = 'RCSceneChatroomKit/Classes/**/*'

  s.public_header_files = 'Pod/Classes/RCSceneChatroomKit.h'
  s.resource = 'RCSceneChatroomKit/Assets/RCSceneChatroomKit.bundle'
  
  s.dependency 'Masonry'
  s.dependency 'YYModel'
  s.dependency 'RCCoreKit'
end

Pod::Spec.new do |s|
  s.name                          = 'PTVSDK'

  s.version                       = ENV['LIB_VERSION']
  s.source                        = { :git => 'https://github.com/PrometheanTV/ptv-sdk-ios-release.git', 
                                      :tag => "v#{s.version.to_s}" }

  s.homepage                      = 'http://promethean.tv'
  s.summary                       = 'Promethean TV SDK for iOS.'
  s.description                   = 'The Promethean SDK provides an interface for rendering on-video overlays.'

  s.license                       = { :type => 'Copyright', 
                                      :text => 'Copyright (C) 2018-2020 by Promethean TV, Inc' }
  s.author                        = { 'Promethean TV' => 'andi.wilson@promethean.tv' }

  s.ios.deployment_target         = '9.0'
  s.ios.vendored_frameworks       = 'Frameworks/iOS/fat/PTVSDK.framework'
  s.ios.frameworks                = 'AVFoundation', 'UIKit', 'WebKit'
end

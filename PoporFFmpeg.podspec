#
# Be sure to run `pod lib lint PoporFFmpeg.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name        = 'PoporFFmpeg'
  s.version     = '0.0.07'
  s.summary     = '简化FFmpeg使用, 由于cocoapod对c++依赖不支持, 所以制作了这个静态包.'

  s.homepage    = 'https://github.com/popor/PoporFFmpeg'
  s.screenshots = 'https://github.com/popor/PoporFFmpegCompress/raw/master/Example/screen1.png'

  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.author      = { 'popor' => '908891024@qq.com' }
  s.source      = { :git => 'https://github.com/popor/PoporFFmpeg.git', :tag => s.version.to_s }
  
  s.ios.frameworks = 'Foundation', 'UIKit'
  
  s.ios.deployment_target  = '8.0'

  
  s.source_files = 'PoporFFmpeg/Classes/*.{h,m}'
  
  # ――― Project Linking ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
  s.frameworks = "VideoToolbox", "AVFoundation"
  
  s.vendored_libraries  = 'PoporFFmpeg/Classes/*.a'
  s.libraries = 'iconv', 'z', 'bz2'
  
end

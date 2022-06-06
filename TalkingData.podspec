Pod::Spec.new do |s|
  s.name = 'TalkingData'
  s.version = '5.0.5'
  s.summary = 'TalkingData SDK'
  s.homepage = 'https://github.com/ElfSundae/TalkingData'
  s.documentation_url = 'https://doc.talkingdata.com/posts/1024'
  s.authors = { 'TalkingData' => 'https://www.talkingdata.com' }
  s.license = { :type => 'Copyright', :text => 'Copyright Beijing Tendcloud Tianxia Technology Co., Ltd. All rights reserved.' }
  s.source = { :git => 'https://github.com/ElfSundae/TalkingData.git', :tag => s.version }

  s.platform = :ios, '9.0'
  s.static_framework = true

  s.default_subspec = 'Basic'

  s.subspec 'Basic' do |ss|
    ss.source_files = 'SDK/Basic/TalkingDataSDK.h', 'TalkingData/*.{h,m}'
    ss.vendored_libraries = 'SDK/Basic/libTalkingDataSDK.a'
    s.libraries = 'z', 'c++'
  end

  s.subspec 'Full' do |ss|
    ss.source_files = 'SDK/Full/TalkingDataSDK.h', 'TalkingData/*.{h,m}'
    ss.vendored_libraries = 'SDK/Full/libTalkingDataSDK.a'
    s.libraries = 'z', 'c++'
  end
end

Pod::Spec.new do |s|
  s.name         = "VuforiaSDK"
  s.version      = "2.6.8"
  s.summary      = "Vuforia SDK"
  
  s.source       = { :http => 'https://github.com/taufikobet/vuforiaios/raw/master/vuforiasdk268.zip', :flatten => true }
  s.platform     = :ios

  # todo: maintain QCAR folder on Pods
  s.source_files = 'build/include/QCAR/*.h'
  s.vendored_library = 'libQCAR.a'
  s.preserve_paths = 'libQCAR.a'
  s.libraries = 'QCAR'
  s.header_dir = 'QCAR'

  s.frameworks = 'AVFoundation', 'CoreVideo', 'CoreMedia', 'QuartzCore', 'OpenGLES', 'CoreMotion', 'MediaPlayer', 'AudioToolbox', 'SystemConfiguration', 'CoreText'

  s.xcconfig  =  { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/VuforiaSDK/vuforiasdk268/build/include"' }
end
  

Pod::Spec.new do |s|
  s.name         = "VuforiaSDK"
  s.version      = "2.6.8"
  s.summary      = "Vuforia SDK"
  
  s.source       = { :http => "https://github.com/taufikobet/vuforiaios/raw/master/vuforiasdk268.zip", :flatten => true }
  s.platform     = :ios

  s.source_files = 'build/include/QCAR/*.h'
  s.preserve_paths = 'build/lib/arm/libQCAR.a'

  s.frameworks = 'AVFoundation', 'CoreVideo', 'CoreMedia', 'QuartzCore', 'OpenGLES', 'CoreMotion', 'MediaPlayer', 'AudioToolbox', 'SystemConfiguration', 'CoreText'
  s.library   = 'libQCAR', 'z'

  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/vuforiasdk268/build/lib/arm"',
                   'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/vuforiasdk268/build/include"' }
end
  

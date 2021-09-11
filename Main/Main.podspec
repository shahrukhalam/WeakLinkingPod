Pod::Spec.new do |spec|
  spec.name         = 'Main'
  spec.version      = '1.0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/user/repo'
  spec.authors      = { 'Shahrukh Alam' => 'alam.shahrukh@gmail.com' }
  spec.summary      = 'Main Framework'
  spec.source       = { :git => 'https://github.com/user/repo.git', :tag => 'v1.0.1' }
  spec.ios.deployment_target  = '9.0'
  spec.source_files = 'Main/*.swift'
  
  spec.pod_target_xcconfig = {
    ## As a Framework
    # To search for SomeFramework.framework
    'FRAMEWORK_SEARCH_PATHS' => ['$(inherited)', '${PODS_CONFIGURATION_BUILD_DIR}/Feature'],

    ## As a Library
    # To search for library.a
    'LIBRARY_SEARCH_PATHS' => ['$(inherited)', '${PODS_CONFIGURATION_BUILD_DIR}/Feature'],
    # To search for Swift Module
    'SWIFT_INCLUDE_PATHS' => ['$(inherited)', '${PODS_CONFIGURATION_BUILD_DIR}/Feature'],
    # To include Swift Module
    'OTHER_SWIFT_FLAGS' => ['$(inherited)', '-Xcc -fmodule-map-file="${PODS_CONFIGURATION_BUILD_DIR}/Feature/Feature.modulemap"'],

    ## As a Framework or Library
    # To link Framework or Library
    'OTHER_LDFLAGS' => ['$(inherited)', '-weak_framework "Feature"', '-weak_library -l"Feature"']
  }
end

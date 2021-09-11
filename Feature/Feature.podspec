Pod::Spec.new do |spec|
  spec.name         = 'Feature'
  spec.version      = '1.0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/user/repo'
  spec.authors      = { 'Shahrukh Alam' => 'alam.shahrukh@gmail.com' }
  spec.summary      = 'Feature Framework'
  spec.source       = { :git => 'https://github.com/user/repo.git', :tag => 'v1.0.1' }
  spec.ios.deployment_target  = '9.0'
  spec.source_files = 'Feature/*.swift'
end

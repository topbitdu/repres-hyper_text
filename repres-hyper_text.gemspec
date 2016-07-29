$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'repres/hyper_text/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'repres-hyper_text'
  spec.version     = Repres::HyperText::VERSION
  spec.authors     = [ 'Topbit Du' ]
  spec.email       = [ 'topbit.du@gmail.com' ]
  spec.homepage    = 'https://github.com/topbitdu/repres-hyper_text'
  spec.summary     = 'Repres HyperText Resource Presentation Engine Repres超文本资源表现引擎'
  spec.description = 'Repres (REsource PRESentation) is a series of resource representation engines. The HyperText resource presentation engine includes HyperText-based resource presentation templates & snippets. Repres (资源表现)是一系列的资源表现引擎。超文本资源表现引擎包括基于超文本的资源表现模版和片段。'
  spec.license     = 'MIT'

  spec.files         = Dir[ '{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md' ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = [ 'lib' ]

  spec.add_dependency 'rails', '>= 4.2'

end

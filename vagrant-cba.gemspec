require File.expand_path('../lib/vagrant-cba/version', __FILE__)

Gem::Specification.new do |s|
  s.name            = 'vagrant-cba'
  s.version         = Vagrant::CBA::VERSION
  s.date            = '2017-11-18'
  s.summary         = "Support CBA clusters"
  s.description     = "A Vagrant plugin to provide support for CBA clusters"
  s.authors         = ["Mátyás Végh"]
  s.email           = 'matyas.vegh@ericsson.com'
  s.files           = `git ls-files`.split($\)
  s.executables     = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.require_paths   = ['lib']
  s.homepage        = 'https://ericsson.se'
  s.license         = 'Ericsson'
end

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vmpooler-provider-pve/version'

Gem::Specification.new do |s|
  s.name          = 'vmpooler-provider-pve'
  s.version       = VmpoolerProviderPve::VERSION
  s.authors       = ['Jake Spain']
  s.email         = ['jakespain1@gmail.com']

  s.summary       = 'Proxmox VE provider for VMPooler'
  s.homepage      = 'https://github.com/yachub/vmpooler-provider-pve'
  s.license       = 'MIT'

  s.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  s.files         = Dir[ "lib/**/*" ]
  s.require_paths = ["lib"]
  #PVE deps
  s.add_dependency 'vmpooler', '~> 3.0'

  # Testing dependencies
  s.add_development_dependency 'climate_control', '>= 0.2.0'
  s.add_development_dependency 'mock_redis', '>= 0.17.0'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rack-test', '>= 0.6'
  s.add_development_dependency 'rspec', '>= 3.2'
  s.add_development_dependency 'rubocop', '~> 1.1.0'
  s.add_development_dependency 'simplecov', '>= 0.11.2'
  s.add_development_dependency 'thor', '~> 1.0', '>= 1.0.1'
  s.add_development_dependency 'yarjuf', '>= 2.0'
end

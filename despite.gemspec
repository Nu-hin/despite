# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'despite/version'

Gem::Specification.new do |spec|
  spec.name          = 'despite'
  spec.version       = Despite::VERSION
  spec.authors       = ['Nikita Chernukhin']
  spec.email         = ['nuinuhin@gmail.com']

  spec.summary       = 'despite and even_if operator'
  spec.description   = 'despite and even_if '
  spec.homepage      = 'https://github.com/nu-hin/despite'
  spec.license       = 'MIT'

  git_files = `git ls-files -z`.split("\x0")
  spec.files = git_files.reject { |f| f.match(%r{^spec/}) }
  spec.require_paths = ['lib']
end

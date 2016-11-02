# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'regatta_results/version'

Gem::Specification.new do |spec|
  spec.name          = "regatta_results"
  spec.version       = RegattaResults::VERSION
  spec.authors       = ["Christina Cole"]
  spec.email         = ["christinal.cole@gmail.com"]

  spec.summary       = %q{2016 AYC WNR results}
  spec.description   = %q{Provides details on 2016 Wednesday Night Race regattas scored by the Annapolis Yacht Club}
  spec.homepage      = "https://github.com/christinalcole/regatta-results"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["regatta-results"]
  spec.require_paths = ["lib"]

  spec.post_install_message = "Thanks for installing!  Fair winds and following seas!..."

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 11.3"
  spec.add_development_dependency "pry", "~> 0"
  spec.add_runtime_dependency "nokogiri", ">= 0"
  spec.add_runtime_dependency "colorize", "~> 0.8"

end

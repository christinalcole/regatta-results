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

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 11.3"
  spec.add_development_dependency "pry", ">=0"
  spec.add_dependency "nokogiri", ">=0"

end

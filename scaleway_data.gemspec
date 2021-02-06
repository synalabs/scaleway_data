require_relative 'lib/scaleway_data/version'

Gem::Specification.new do |spec|
  spec.name          = "scaleway_data"
  spec.version       = ScalewayData::VERSION
  spec.authors       = ["Francois Baligant"]
  spec.email         = ["fbaligant@synalabs.com"]

  spec.summary       = "Simple module to get current scaleway data project and region"
  spec.homepage      = "https://github.com/synalabs/scaleway_data"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "memoist"
end
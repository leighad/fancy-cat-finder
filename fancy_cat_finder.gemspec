lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fancy_cat_finder/version"

Gem::Specification.new do |spec|
  spec.name          = "fancy_cat_finder"
  spec.version       = FancyCatFinder::VERSION
  spec.authors       = ["leighad"]
  spec.email         = ["cdversiontwo@gmail.com"]

  spec.summary       = "Find fancy cats and learn more about them. Search by list or view random selection."
  spec.description   = "More details to follow."
  spec.homepage      = "https://github.com/leighad/fancy-cat-finder"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/leighad/fancy-cat-finder"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri"
  
end

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "version"

Gem::Specification.new do |spec|
  spec.name          = "sports_news_scraper"
  spec.version       = SportsNewsScraper::VERSION
  spec.authors       = ["Dave Van Fleet"]
  spec.email         = ["dvfleet413@gmail.com"]

  spec.summary       = %q{Sports News Scraper is a CLI gem designed to provide quick access to articles on ESPN.com
                        for your favorite MLB team.}
  spec.description   = %q{Sports News Scraper is a CLI gem designed to provide quick access to articles on ESPN.com
                        for your favorite MLB team}
  spec.homepage      = "https://github.com/dvfleet413/espn-scraper"

#  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dvfleet413/espn-scraper"
  spec.metadata["changelog_uri"] = "https://github.com/dvfleet413/espn-scraper/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables   << "sports_news_scraper"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "nokogiri", "~> 1.10"
  spec.add_runtime_dependency "colorize", "~> 0.8"
  spec.add_runtime_dependency "tty-prompt", "~> 0.20"


  gem 'nokogiri'
  gem 'colorize'
  gem 'tty-prompt'
end

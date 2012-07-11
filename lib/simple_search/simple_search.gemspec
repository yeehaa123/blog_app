$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_search/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_search"
  s.version     = SimpleSearch::VERSION
  s.authors     = ["Yeehaa"]
  s.email       = ["medialoperations@gmail.com"]
  s.homepage    = "www.medialoperations.com"
  s.summary     = "Name says it all"
  s.description = "Name says it all"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"

  s.add_development_dependency "sqlite3"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "matilha_login/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "matilha_login"
  s.version     = MatilhaLogin::VERSION
  s.authors     = ["Diego Haas Sanches"]
  s.email       = ["egoforia@gmail.com"]
  s.homepage    = "https://github.com/matilhaestudio/matilha_login"
  s.summary     = "TODO: Summary of MatilhaLogin."
  s.description = "TODO: Description of MatilhaLogin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "mysql2"
end

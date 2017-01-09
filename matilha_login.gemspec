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
  s.summary     = "Login via email, Facebook, Google Account, entre outros são comuns entre vários projetos. Essa engine é uma solução simples para usar qualquer tipo de login para aplicações Rails."
  s.description = "Rails Engine para gerenciar diferentes tipos de logins"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "mysql2"

  s.add_dependency "devise"
  s.add_dependency "omniauth"
  s.add_dependency "omniauth-facebook"

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
end

# Matilha Login
Engine para facilitar a inclusão de login em aplicações Rails.
Atualmente suporta logins por:
 - Devise
 - Facebook

# Instalação
gem 'matilha_login', git: 'https://github.com/matilhaestudio/matilha_login.git'

rake app:matilha_login:install:migrations
rake db:migrate

routes.rb
mount MatilhaLogin::Engine, at: "/"

Controllers
before_action :authenticate_user!
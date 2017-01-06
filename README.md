# Matilha Login
Engine para facilitar a inclusão de login em aplicações Rails.
Atualmente suporta logins por:
 - Devise
 - Facebook

# Instalação
### Gemfile
```ruby
gem 'matilha_login', git: 'https://github.com/matilhaestudio/matilha_login.git'
```

### Terminal
`rake app:matilha_login:install:migration
rake db:migrate`

### routes.rb
```ruby
mount MatilhaLogin::Engine, at: "/"
```

### Controllers
```ruby
before_action :authenticate_user!
```

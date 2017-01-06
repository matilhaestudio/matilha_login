# Matilha Login :wolf:
A Rails Engine that provides multiple methods of login to your Rails application.

Currently suppports:
 - [Devise](https://github.com/plataformatec/devise)
 - [Facebook] (https://github.com/mkdynamic/omniauth-facebook)

# Instalação
### Gemfile
Add it to your Gemfile
```ruby
gem 'matilha_login', git: 'https://github.com/matilhaestudio/matilha_login.git'
```
Then run bundle install

### Terminal
You will need to copy migrations and execute them with the following commands:

```
rake app:matilha_login:install:migration
rake db:migrate
```

### routes.rb
Mount it on your routes to have access to the login pages
```ruby
mount MatilhaLogin::Engine, at: "/"
```

### Controllers
Set up your controllers with user authentication, just add this before_action
```ruby
before_action :authenticate_user!
```

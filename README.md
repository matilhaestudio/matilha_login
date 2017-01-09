# Matilha Login :wolf:
A Rails Engine that provides multiple methods of login to your Rails application.

Currently suppports:
 - [Devise](https://github.com/plataformatec/devise)
 - [Facebook] (https://github.com/mkdynamic/omniauth-facebook)

# Installation
### Gemfile
Add it to your Gemfile
```ruby
gem 'matilha_login', git: 'https://github.com/matilhaestudio/matilha_login.git'
```
Then run bundle install

### Terminal
You will need to copy migrations and execute them with the following commands:

```
rails generate matilha_login:install
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
### Facebook Configuration
Set up Facebook configuration on initializer **config/initializers/matilha_login.rb

Example:

```ruby
config.facebook_app_id = "1660887170876551"
config.facebook_app_secret = "3dcd72e8ab7fda6d2591fbc31edbc3cb"
```

class MatilhaLogin::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_initializer
  	template "matilha_login.rb", "config/initializers/matilha_login.rb"

  	system 'rake matilha_login:install:migrations'
  end
end

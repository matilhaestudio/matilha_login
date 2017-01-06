MatilhaLogin::Engine.routes.draw do
	# devise_scope :user do 
	# 	providers = Regexp.union(Devise.omniauth_providers.map(&:to_s))
	# 	match 'users/auth/:provider', 
	# 		constraints: { provider: providers },
	# 		to: 'omniauth_callbacks#passthru', 
	# 		as: :omniauth_authorize, 
	# 		via: [:get, :post]

	# 	match 'users/auth/:action/callback', 
	# 		constraints: { action: providers },
	# 		to: 'omniauth_callbacks', 
	# 		as: :omniauth_callback, 
	# 		via: [:get, :post]
	# end

	devise_for :users, class_name: "MatilhaLogin::User", module: :devise, controllers: {omniauth_callbacks: "matilha_login/omniauth_callbacks"}
end

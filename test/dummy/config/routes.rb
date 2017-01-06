Rails.application.routes.draw do
	mount MatilhaLogin::Engine, at: "/"

	root to: 'home#index'
end

MatilhaLogin::Engine.routes.draw do
  devise_for :users, class_name: "MatilhaLogin::User", module: :devise
end

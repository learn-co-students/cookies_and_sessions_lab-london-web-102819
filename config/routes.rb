Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  get '/', to: "application#home", as: :home
  post '/', to: "application#add_to_cart"
end

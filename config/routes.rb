Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'listings#index'

  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  resources :listings
  resources :reservations
  # root to: "listings#index"
  # resources :listings
  resources :users

  # get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  # delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  # get "/sign_up" => "clearance/users#new", as: "sign_up"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'listings/index'

  # get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sign_up' => 'clearance/users#new', as: '/users/sign_up'

end

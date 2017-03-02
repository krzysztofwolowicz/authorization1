Rails.application.routes.draw do



  get 'confrenz/index'

  resources :menu
  resources :confrenz



  root 'home#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

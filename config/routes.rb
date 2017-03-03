Rails.application.routes.draw do
  root 'home#index'
  resources :menu
  resources :confrenzs
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

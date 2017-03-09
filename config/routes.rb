Rails.application.routes.draw do

  resources :companies

  root 'home#index'
  resources :menu
  resources :modules
  resources :confrenzs do
    resources :subjects
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

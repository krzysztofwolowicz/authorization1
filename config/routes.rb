Rails.application.routes.draw do
  root 'home#index'
  resources :menu
  resources :confrenzs do
    resources :subjects
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

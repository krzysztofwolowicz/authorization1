Rails.application.routes.draw do
  get 'speakers/index'

  get 'speakers/new'

  get 'speakers/show'

  get 'speakers/edit'

  get 'speakers/delete'

  get 'modules/index'

  root 'home#index'
  resources :menu
  resources :modules
  resources :confrenzs do
    resources :subjects
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

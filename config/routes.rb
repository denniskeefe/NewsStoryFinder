NewsStoryFinder::Application.routes.draw do
  devise_for :users, path_names: { sign_in: :login, sign_out: :logout },
    controllers: { omniauth_callbacks: :omniauth_callbacks }

  resources :stories
  resources :categories

  get 'static_pages/home'
  get 'static_pages/welcome'

  root to: 'stories#index'
end

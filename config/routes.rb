Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

   root 'static_page#home'
  get 'static_page/home'

  get 'static_page/help'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

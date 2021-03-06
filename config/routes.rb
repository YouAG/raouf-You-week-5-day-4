Rails.application.routes.draw do
  root 'welcome#index'

  get 'events/new'

  get 'sessions/new'

  get 'users/new'

  get 'users/show'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/events/:id/subscribe', to: "events#subscribe", as: :subscribe

  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

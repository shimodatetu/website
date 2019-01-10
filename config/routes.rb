Rails.application.routes.draw do
  get 'thread_all/show'
  get 'thread/show/:id' => 'thread#show'
  get 'posts/index'
  get 'groups/index'
  get 'sessions/new'
  get 'users/new'
  get 'rooms/show'
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'thread_all#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

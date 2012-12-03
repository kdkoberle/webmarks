Webmarks::Application.routes.draw do
  resources :webmarks

  root to: 'webmarks#home'
  
  match '/add', to: 'webmarks#new'
  match '/view', to: 'webmarks#view'
  match '/test', to: 'webmarks#index'

end

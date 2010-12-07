SampleApp::Application.routes.draw do
  resources :users
  resources :sessions,  :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]

  match '/singup',  :to => 'users#new'
  match '/singin',  :to => 'sessions#new'
  match '/singout', :to => 'sessions#destroy'
  
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  
  root :to => "pages#home"
end

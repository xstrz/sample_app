SampleApp::Application.routes.draw do
  resources :users
  resources :sessions,  :only => [:new, :create, :destroy]

  match '/singup',  :to => 'users#new'
  match '/singin',  :to => 'sessions#new'
  match '/singout', :to => 'sessions#destroy'
  
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "pages#home"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

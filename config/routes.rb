Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root to:"galleries#index"

  resources :galleries, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :images, only: [:new, :create] 
  	#get "/images/new" => "images#new"
    #post "images" => "images#create"

  end
   resources :images, only: [:show, :edit, :update] do
    resources :comments, only: [:create]
  end
  
end



#resources :images, only 
  #resources :users, only: [:create]
    #resource :session, only: [:create]

  #get "/sign_up", to: "users#new" 
  #get "/sign_in", to: "sessions#new"

  #get "/" => "galleries#index"
  #get "/galleries/new" => "galleries#new"
  #get "/galleries/:id" => "galleries#show"
  #post "/galleries/" => "galleries#create"
  #get "/galleries/:id/edit" => "galleries#edit"
  #patch "/galleries/:id" => "galleries#update"
  #delete "/galleries/:id" => "galleries#destroy"


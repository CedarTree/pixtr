

Rails.application.routes.draw do
  root to:"galleries#index"
  resources :galleries, only: [:show, :new, :create, :edit, :update, :destroy] do
  
  	resources :images, only: [:new, :create, :edit, :update]	

  	#get "/images/new" => "images#new"
    #post "images" => "images#create"
  end
end


  #get "/" => "galleries#index"
  #get "/galleries/new" => "galleries#new"
  #get "/galleries/:id" => "galleries#show"
  #post "/galleries/" => "galleries#create"
  #get "/galleries/:id/edit" => "galleries#edit"
  #patch "/galleries/:id" => "galleries#update"
  #delete "/galleries/:id" => "galleries#destroy"


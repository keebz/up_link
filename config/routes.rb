Rails.application.routes.draw do

  resources :comments

  resources :sessions
  resources :users do
  	resources :comments
  end

  root :to => 'links#index'
  resources :links do
  	resources :comments
    resources :votes, :only => [:create] 
  end

end

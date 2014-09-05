Rails.application.routes.draw do

  resources :sessions
  resources :users

  root :to => 'links#index'
  resources :links do
    resources :votes, :only => [:create] 
  end

end

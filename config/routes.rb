Rails.application.routes.draw do

  resources :items, only: [:index, :show, :create] do 
    resources :users, only: [:create]
  end

  resources :users, only: [:show, :create] do
    resources :items, only: [:show, :index, :create]
  end

end

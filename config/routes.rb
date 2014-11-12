Rails.application.routes.draw do
  devise_for :users
  
  resources :datasets do
    post :vote, on: :member
  end
  
  root to: 'datasets#index'
end

Rails.application.routes.draw do
  devise_for :users
  
  resources :slections
  root "selections#index"


end

Rails.application.routes.draw do
  devise_for :users
  
  resources :selections
  root "selections#index"


end

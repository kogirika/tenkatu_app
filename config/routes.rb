Rails.application.routes.draw do
  devise_for :users

  resources :selections do
    resources :interviews
  end

  root "selections#index"


end

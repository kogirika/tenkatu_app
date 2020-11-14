Rails.application.routes.draw do
  devise_for :users

  resources :selections, except: :new do
    resources :interviews, except: [:index, :show]
  end

  root "selections#index"


end

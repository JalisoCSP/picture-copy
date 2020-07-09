Rails.application.routes.draw do
  resources :pictures do
    resources :copies
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pictures#index'
end

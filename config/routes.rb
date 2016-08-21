Rails.application.routes.draw do

  resources :statistics
  resources :webhooks
  root 'statistics#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

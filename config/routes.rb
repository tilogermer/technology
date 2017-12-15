Rails.application.routes.draw do

  root 'plattforms#index'
  
  resources :plattforms

  get 'tags/:tag', to: 'plattforms#index', as: "tag"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

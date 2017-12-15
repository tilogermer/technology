# == Route Map
#
#         Prefix Verb   URI Pattern                    Controller#Action
#           root GET    /                              plattforms#index
#     plattforms GET    /plattforms(.:format)          plattforms#index
#                POST   /plattforms(.:format)          plattforms#create
#  new_plattform GET    /plattforms/new(.:format)      plattforms#new
# edit_plattform GET    /plattforms/:id/edit(.:format) plattforms#edit
#      plattform GET    /plattforms/:id(.:format)      plattforms#show
#                PATCH  /plattforms/:id(.:format)      plattforms#update
#                PUT    /plattforms/:id(.:format)      plattforms#update
#                DELETE /plattforms/:id(.:format)      plattforms#destroy
#            tag GET    /tags/:tag(.:format)           plattforms#index
# 

Rails.application.routes.draw do

  root 'plattforms#index'
  
  resources :plattforms
  
  
  

  get 'tags/:tag', to: 'plattforms#index', as: "tag"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

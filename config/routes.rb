Rails.application.routes.draw do

get 'tasks', to: 'tasks#index'
get 'tasks/new', to: 'tasks#new', as: :new_task
get 'tasks/:id', to: 'tasks#show', as: :task
post 'tasks', to: 'tasks#create'

get 'tasks/:id/edit', to:'tasks#edit', as: :edit_task
delete 'tasks/:id/destroy', to:'tasks#destroy', as: :destroy_task

patch 'tasks/:id', to: 'tasks#update'

  # get 'restaurants/:id', to: 'restaurants#show'

  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurant/create', to: 'restaurants#create'


  # get 'restaurants/:id/edit', to:'restaurant#edit'
  # patch 'restaurant/:id',
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

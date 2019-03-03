Rails.application.routes.draw do
  root 'tasks#index'
  get  'tasks/index' => 'tasks#index'
  get  'tasks/new' => 'tasks#new'
  post 'tasks/create' => 'tasks#create'
  post 'tasks/:id/delete' => 'tasks#delete'
  get  'tasks/:id/edit' => 'tasks#edit'
  post 'tasks/:id/update' => 'tasks#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

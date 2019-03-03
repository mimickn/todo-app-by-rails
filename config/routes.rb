Rails.application.routes.draw do
  root 'home#top'

  get  'users/new' => 'users#new'
  post 'users/create' => 'users#create'
  get  'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
  get  'users/:id' => 'users#show'
  post 'users/:id/delete' => 'users#delete'
  get  'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  get  'tasks/index' => 'tasks#index'
  get  'tasks/new' => 'tasks#new'
  post 'tasks/create' => 'tasks#create'
  post 'tasks/:id/delete' => 'tasks#delete'
  get  'tasks/:id/edit' => 'tasks#edit'
  post 'tasks/:id/update' => 'tasks#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  # route for new method
  get 'todos/new'
  # route for created method
  post 'todos', to: 'todos#create'
  # route for show method
  get 'todos/:id', to: 'todos#show', as: 'todo'
  # route for edit method
  get 'todos/:id/edit', to: 'todos#edit'
  # route for update method
  patch 'todos/:id', to: 'todos#update'
  # route for destroy method
  delete 'todos/:id', to: 'todos#destroy'
  # route for complete method
  get 'todos/:id', to: 'todos#complete'
  # route for list
  get 'todos/list'
end

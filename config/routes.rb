Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # We need a page for our form

  # http_verb '/path', to: 'controller#action', as: :prefix
  # http_verbs -> get / post / patch / delete

  # CRUD
  # Create
  # We need a page for our form
  get "/tasks/new", to: "tasks#new", as: :new_task
  # We need another route to send our form information to
  post "/tasks", to: "tasks#create", as: :tasks

  #Read
  get "tasks" , to: "tasks#index"
  get "/tasks/:id" , to: "tasks#show", as: :task

  #Update
  # We need a page for our form
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
    # We need another route to send our form information to
    # post '/tasks', to: 'tasks#create', as: :
end

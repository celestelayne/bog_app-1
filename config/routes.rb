Rails.application.routes.draw do

  root 'creatures#index'

  # Both the get and post route will be under the 'creatures' prefix
  # Refer to 'rake routes' output
  get 'creatures', to: 'creatures#index', as: 'creatures'
  post 'creatures', to: 'creatures#create'
  get 'creatures/new', to: 'creatures#new', as: 'new_creature'
  get 'creatures/:id', to: 'creatures#show', as: 'creature'
  # Since the form_for in edit.html.erb was allowed to infer action
  # and method from our object method, we must use patch instead of put
  patch 'creatures/:id', to: 'creatures#update'
  get 'creatures/:id/edit', to: 'creatures#edit', as: 'edit_creature'
  delete 'creatures/:id', to: 'creatures#destroy', as: 'delete_creature'

end

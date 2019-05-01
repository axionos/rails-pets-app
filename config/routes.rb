Rails.application.routes.draw do
  # get 'pets/index'
  # get 'pets/show'
  # get 'pets/new'
  # get 'pets/create'
  # get 'pets/edit'
  # get 'pets/update'
  # get 'pets/destroy'
  # get 'owners/index'
  # get 'owners/show'
  # get 'owners/new'
  # get 'owners/create'
  # get 'owners/edit'
  # get 'owners/update'
  # get 'owners/destroy'
  get 'owners/multi_pets', to: "owners#multi_pets"
  resources :owners
  resources :pets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

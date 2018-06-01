Rails.application.routes.draw do

  root 'programs#index'
  root 'programs#new'
  resources :programs
  get :"program/:id", to:"programs#destroy"

  
  root 'records#new'
  resources :records
  get :"record/:id", to:"records#destroy"

  root 'parkings#new'
  resources :parkings
  get :"parking/:id", to:"parkings#destroy"

  root 'security_staffs#new'
  resources :security_staffs
  get :"security_staff/:id", to:"security_staffs#destroy"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

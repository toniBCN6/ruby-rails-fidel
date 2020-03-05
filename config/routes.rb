Rails.application.routes.draw do
  resources :productos
  get 'welcome/index'
  get '/new', to: 'productos#new'
  root 'productos#index'
  post '/', to: 'productos#create'
  get '/:id/edit', to: 'productos#edit', as: 'edit_product'
  patch '/:id/', to: 'productos#update'
  delete '/:id/', to: 'productos#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

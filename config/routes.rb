Rails.application.routes.draw do
  resources :products
  # scope '/admin' do
  #   resources :products
  #   resources :stores
  #  # get 'stores/index'
  #  # get 'stores/show'
  # end

  #  get '/products', to: 'products#index'
  #  get '/products/:id', to: 'products#show'
  #  post '/products', to: 'products#create'
  #  put '/products/:id/archive', to: 'products#archive'
  #  put '/products/:id', to: 'products#update'
  #  get '/nonsenses/:silly_id/:silly_as_well', to: 'nonsenses#show'

  resources :customers do
    resources :orders, only: [:index, :new, :create]
  end

  # resources :orders, except: [:index, :new, :create]

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end

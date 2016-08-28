Rails.application.routes.draw do
  
  resources :restaurants
  get '/restaurants' => "restaurants#index"
  get '/restaurants/new' => "restaurants#new"
  get '/restaurants/:id/edit' => "restaurants#edit"
  resources :cards
  resources :users, except: [:index]
  
  get '/signup' => "users#new", as: :signup
  get '/login' => "users#login"
  post 'login' => "users#authenticate"
  get '/:username' => "users#show_by_name"
  get '/:username/edit' => "users#edit_by_name", as: :edit_by_name

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
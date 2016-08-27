Rails.application.routes.draw do
  
  
  resources :cards
  resources :users, except: [:index]
  
  get '/signup' => "users#new", as: :signup
  get '/login' => "users#login"
  post 'login' => "users#authenticate"
  get '/:username' => "users#show_by_name"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

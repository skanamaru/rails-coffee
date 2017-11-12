Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :drink_counts
  
  get '/views/board/', to: 'board#index', as: 'board'
end

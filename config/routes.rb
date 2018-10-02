Rails.application.routes.draw do
  resources :histories

  get 'users/sign_up', to: "users#new"
  get 'users/sign_in', to: 'sessions#new'
	post 'users', to: "users#create"
	resources :sessions, only: [:create, :destroy]

  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

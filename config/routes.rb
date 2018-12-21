Rails.application.routes.draw do
  resources :admins
  resources :examinees

  root 'home#index'
  get 'about', to: 'home#about'
  get 'signup', to: 'user#new'
  resources :user, except: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

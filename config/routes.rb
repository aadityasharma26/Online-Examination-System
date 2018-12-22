Rails.application.routes.draw do
  resources :logins
  resources :admins
  resources :examinees
  
  get 'examineesignin', to: 'logins#examineesignin'
  root 'home#index'
  get 'signin', to: 'home#signin'
  get 'signexaminee', to: 'home#signexaminee'
  get 'home', to: 'home#home'
  get 'about', to: 'home#about'
  get 'signup', to: 'user#new'
  resources :user, except: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
  get 'user/sign-in', to:'sessions#index'
  post 'user/sign-in', to:'sessions#new'
  get 'user/sign-up', to:'users#index'
  post 'user/sign-up', to:'users#create'


end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user/sign-in', to:'sessions#index'
  post 'user/sign-in', to:'sessions#new'
  get 'user/sign-in', to:'users#index'


end

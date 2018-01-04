Rails.application.routes.draw do
  get 'faces/register'
  put 'faces/update' => 'faces#update'
  get 'user/face' => 'users#face'

  devise_for :users
  get 'chirps/face' => 'chirps#face'
  get 'chirps', :to => 'chirps#index', :as => :user_root
  get 'chirps/photo' => 'chirps#photo'

  resources :users
  resources :chirps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'chirps#index'
end

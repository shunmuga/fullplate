Rails.application.routes.draw do
  resources :foods
  resources :controllers
  get 'foods/show'
  get 'foods/edit'
  get 'static_pages/home'
  get "static_pages/pantry"
  get "static_pages/food_form"
  resources :users
  root 'static_pages#home'
  get 'foods#index' => "static_pages#pantry"
  get 'foods#edit' => "static_pages#food_form"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

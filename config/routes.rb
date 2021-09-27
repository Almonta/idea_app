Rails.application.routes.draw do
  get 'ideas/index'
  get 'ideas/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:new, :create]
  resources :ideas
end

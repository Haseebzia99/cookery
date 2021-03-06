Rails.application.routes.draw do
  devise_for :users
  root to: 'users#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :bookings

  end
  get 'users/:id/profile', to: 'users#profile', as: :profile
end

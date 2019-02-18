Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :animations do
      resources :bookings, only: [ :new, :create ]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cards, only: [:index, :show]
  resources :arcanas, only: [:index, :show]
  resources :suits, only: [:index, :show]
  resources :meanings, only: [:index, :show]
  resources :spreads, only: [:index, :show]

  get '*other', to: redirect('/')
end

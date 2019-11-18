Rails.application.routes.draw do
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  root to: 'pages#home'
  resources :doses, only: :destroy
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
end

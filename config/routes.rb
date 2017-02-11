Rails.application.routes.draw do
  resources :borrowers
  get 'pages/about'

  get 'pages/contact'

  root 'borrowers#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

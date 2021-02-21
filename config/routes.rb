Rails.application.routes.draw do
  get 'stations/new'
  root "rentals#index"
  resources :rentals do
    resources :staions
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

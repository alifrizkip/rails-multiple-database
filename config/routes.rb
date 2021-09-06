Rails.application.routes.draw do
  namespace :legacy do
    resources :todos
  end

  resources :todos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

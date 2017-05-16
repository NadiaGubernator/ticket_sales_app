Rails.application.routes.draw do
  resources :lines
  resources :tickets
  resources :users
  root 'application#hello'
end

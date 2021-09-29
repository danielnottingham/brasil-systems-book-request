Rails.application.routes.draw do
  resources :order_books, only: %i[index create destroy]
  root to: 'order_books#index'
end

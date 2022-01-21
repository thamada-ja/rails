Rails.application.routes.draw do
  resources :testdbs
  # DBを表示する
  root 'testdbs#index'

  # hello,world!を表示する
  # root 'application#hello'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

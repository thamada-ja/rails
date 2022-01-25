Rails.application.routes.draw do
  resources :testdbs
  # DBを表示する
  get "test" => "testdbs#index"

  # home/topをtopとして表示する
  get "top" => "home#top"
  get "about" => "home#about"

  # hello,world!を表示する
  # root 'application#hello'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

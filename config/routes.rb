Rails.application.routes.draw do
  resources :boards
  root 'boards#index'

  # 一覧取得
  get 'boards' => 'boards#index'
  # 新規作成
  post 'boards' => 'boards#create'
  # 記事編集
  get 'boards/:id/edit' => 'boards#edit'
  # 記事更新
  patch 'boards/:id' => 'boards#update'
  # 記事削除
  delete 'boards/:id' => 'boards#destory'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  resources :boards
  root 'boards#index'

  # 一覧取得
  get 'boards' => 'boards#index'
  # 新規作成
  post 'boards' => 'boards#create'
  # @TODO: IDに紐づく情報を表示
  # get 'boards/:id' => 'boards#show'

  # 記事削除
  delete 'boards/:id' => 'boards#destory'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# Route機能
# PHPで言うと「Web.php」
# 書き方..「Rails.application.routes.braw do」
# 「get」でもらったURLを「root」でどこの「Controllerのアクション」に飛ばすか指定する
# 最後に「end」をつけて終了
Rails.application.routes.draw do
  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'pages/index'
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  resources :topics
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
end
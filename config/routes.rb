# Route機能
# PHPで言うと「Web.php」
# 書き方..「Rails.application.routes.braw do」
# 「get」でもらったURLを「root」でどこの「Controllerのアクション」に飛ばすか指定する
# 最後に「end」をつけて終了

Rails.application.routes.draw do
  get 'comments/new'
  # get 'topics/new'
  get 'sessions/new'
  # get 'users/new'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'
  resources :users
  resources :topics
  
  #コメント
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
end
HackerNews::Application.routes.draw do
  root to: "posts#index"

  resources :posts, :votes

  post 'posts', to: 'votes#create'

end

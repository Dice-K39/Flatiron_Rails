Rails.application.routes.draw do
  get 'posts_controller/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'posts/:id' => 'posts#show'
  resources :posts, only: :show
end

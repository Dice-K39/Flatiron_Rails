Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
  #get 'article/:id/edit', to: 'articles#edit', as: :edit_article
  #patch 'article/:id', to: 'article#update'
end
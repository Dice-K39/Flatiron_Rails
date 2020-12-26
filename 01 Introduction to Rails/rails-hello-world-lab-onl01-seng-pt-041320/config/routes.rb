Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # either works
  get '/hello_world' => 'hello_world#hello_world'
  #get '/hello_world', to: 'hello_world#hello_world'
end

Rails.application.routes.draw do
  get '/employees' => 'employees#index'
  post '/employees' => 'employees#create'
  get '/employees/:id' => 'employees#show'
  patch '/employees/:id' => 'employees#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

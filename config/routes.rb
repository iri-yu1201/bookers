Rails.application.routes.draw do
  resources :books
  
  post 'books' => 'books#create'
  
  
  root :to => 'homes#top'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

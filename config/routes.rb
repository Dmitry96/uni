Rails.application.routes.draw do

  devise_for :users
  resources :posts
  root 'posts#index'
  get 'pages/curriculum'
  
  resources :courses, only: :show, path: '' do
    resources :lessons, only: :show, path: ''
  end


  
end

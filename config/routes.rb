Rails.application.routes.draw do
  
  root to:'blog/posts#index'

  # /author/posts
  namespace :author do
  	resources :posts
  end

  
  scope module: 'blog' do
	  get 'about', to: 'pages#about', as: :about
	  get 'contact', to: 'pages#contact', as: :contact
	  get 'posts', to: 'posts#index', as: :posts
	  get 'posts/:id', to: 'posts#show', as: :post
  	resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

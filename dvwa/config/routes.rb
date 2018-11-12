Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'ntcc/xss', to: 'ntcc#index'
  get 'ntcc/local-file-read', to: 'files#index'
  match 'ntcc/local-file-read' => 'files#view', :via => :post
  get 'ntcc/local-file-read/show', to: 'files#show'
  get 'ntcc/csrf', to: 'products#index'
  match 'ntcc/csrf' => 'products#create', :via => :post
  get 'ntcc/sql', to: 'users#index'
  get 'ntcc/sql/user-update', to: 'users#edit'
  match 'ntcc/sql/user-update' => 'users#update', :via => :post
  match 'ntcc/sql', to: 'users#create', :via => :post
  get 'test/sankalp', to: 'test#index'


end

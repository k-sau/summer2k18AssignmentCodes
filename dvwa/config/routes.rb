Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'ntcc/xss', to: 'ntcc#index'
  get 'ntcc/csrf', to: 'products#index'
  match 'ntcc/csrf' => 'products#create', :via => :post

end

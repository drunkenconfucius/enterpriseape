Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/pricing'
  get 'welcome/features'
  
  devise_scope  :user do
    get "/login" => "devise/sessions#new"
  end
  
  devise_scope  :user do 
    delete "/logout" => "devise/sessions#destroy"
  end
  
  resources :invoices
  
  root to: 'welcome#index'
  
end

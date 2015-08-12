Rails.application.routes.draw do
  devise_for :users, :skip => [:sessions]
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faq'
  get 'welcome/pricing'
  get 'welcome/features'
  
  resources :invoices
  
  as :user do
      get 'signin' => 'devise/sessions#new', :as => :new_user_session
      post 'signin' => 'devise/sessions#create', :as => :user_session
      delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  
  root to: 'welcome#index'
  
end

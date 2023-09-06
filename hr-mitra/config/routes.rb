Rails.application.routes.draw do



  
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  # resources :employees 
  resources :employees  do
    get 'graph', on: :collection
  end

  resources :documents

  # resources :departments, only: [:index]

  # get '/departments/index', to: 'departments#index'
  # get '/employees/graph', to: 'employees#graph'

  root 'pages#index'
  get 'about-us' => 'pages#about_us'
  get 'services' => 'pages#services'
  get 'contact' => 'pages#contact'
  get 'privacy-policy' => 'pages#privacy_policy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end

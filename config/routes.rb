Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users
  resources :trucks
  resources :ratings
  resources :reviews 
  resources :favorites

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root to: 'static_pages#root'

  get '/tutor', to: 'static_pages#new_tutor'
  get '/student', to: 'static_pages#new_student'

  get 'events/search', to: 'events#search'
  resources :events, except: [:destroy] do
    resources :comments
  end
  resources :users
  resources :needs
  resources :groups
  resources :locations
  resources :events

end

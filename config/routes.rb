Rails.application.routes.draw do
  get 'standings/divisional'

  get 'standings/wc'

  get 'schedule/show'
  root to: 'schedule#show'
  resources :matches
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

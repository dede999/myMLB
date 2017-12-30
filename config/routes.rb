Rails.application.routes.draw do
  match 'divisional' => 'standings#divisional', via: 'get'
  match 'schedule' => 'schedule#show', via: 'get'

  get 'standings/wc'

  get 'schedule/show', to: 'schedule#show'
  root to: 'schedule#show'
  resources :matches
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

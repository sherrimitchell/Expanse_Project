Rails.application.routes.draw do
  root to: 'breaches#index'

  get 'breaches', to: 'breaches#index'
  get 'breaches/year/:year', to: 'breaches#show_breaches_by_year'
  get 'breaches/state/:state', to: 'breaches#show_breaches_by_state'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

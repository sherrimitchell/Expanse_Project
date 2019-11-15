Rails.application.routes.draw do
	resources :breaches


	  namespace :charts do
	  		get 'by_type_breaches'
	  		get 'by_state_breaches'
	  		get 'by_victims_breaches'
	  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
	
  #get 'bookings/new'

  root 'flights#index'

  get 'flights' , to: 'flights#index'

  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

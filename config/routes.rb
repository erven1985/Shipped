Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  devise_for :users
	
	get '/'  => 'welcome#index',  as: 'root_user'

	resources :boats

 

resources :jobs do

    member do
        get 'check'
    end
end
end
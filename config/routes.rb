Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  devise_for :users
	
	get '/'          => 'welcome#index',  as: 'root_user'
	get '/users/:id' => 'welcome#show', 	as: 'user_profile'
	get 'jobs/personal/:name' => 'jobs#show' 

	resources :boats
	resources :jobs

    resources :jobs do

    member do
        get 'check'
    end
end
end
BrainStromers::Application.routes.draw do
root :to => 'reach_out#index' 
resources :users
resources :sessions, only: [:new, :create, :destroy]

match '/SignIn', to: 'sessions#new'
#match '/SignIn', to: 'reach_out#Login'
#match '/SignIn', to: 'sessions#create'
match '/Home', to: 'reach_out#Home'
match '/Charity', to: 'reach_out#DiscussionThread'
match '/DiscussionThread', to: 'reach_out#Charity'
match '/SignUp', to: 'users#new'
match '/create', to: 'users#create'
match '/About', to: 'reach_out#About'
match '/SignOut', to: 'sessions#destroy', via: :delete
#match '/SignIn', to: 'sessions#new' 



# get "users/new"
#root :to=> 'reach_out#Home'

  
  
	#match 'reach_out/SignUp', :to => 'users#new'
  
#  get "reach_out/Login"

  #get "reach_out/Home"

#  get "reach_out/Charity"

 # get "reach_out/DiscussionThread"
  
 # get "reach_out/SignUp"

#  get "reach_out/About"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

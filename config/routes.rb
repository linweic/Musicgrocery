Musicgrocery::Application.routes.draw do
  

  get "customer/dashboard"
  
  resources :favorates
   #root :to => "favorates#index"	
  get "favorates#show", :to => "search#details" 	
  get "music_grocery/index"

  devise_for :customers

  devise_scope :customer do
  get "customer/dashboard" => "devise/sessions#new"
  post "/search/details"
  #get "/dashboard/dashboard" => ""
  end


#devise_scope :user do
#  match 'registrations/create' => 'registrations#create', :as => :user_register
#end

	#devise_scope :customer do
  	#get "/", :to => "devise/sessions#new"
	#end



  

  post "biography/info"

  post "boigraphy/info"

  post "event/info"

  post "album/info"

  post "song/info"

  post "lyric/info"

  get "song/info"

  get "newuser/signup"

  root :to => "music_grocery#index"  

  resources :users
  #root :to => "users#index"
  get "/newuser/signup"
  get "/newuser/accountcreated"
  get "/dashboard/dashboard"
  
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
  #e
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

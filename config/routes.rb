CourseLocations::Application.routes.draw do

  resources :variables

  # workaround because method delete does not work after installing jquery
  # analogous to edit
  # edit_location GET    /locations/:id/edit(.:format) {:action=>"edit", :controller=>"locations"}
  # delete_location        /locations/:id/delete(.:format) {:controller=>"locations", :action=>"destroy"}
  resources :locations
  match 'locations/:id/delete' => 'locations#destroy', :as => :delete_location

  resources :areas
  match 'areas/:id/delete' => 'areas#destroy', :as => :delete_area
  #new_area GET    /areas/new(.:format)              {:action=>"new", :controller=>"areas"}
  match '/areas/new/:id(.:format)' => 'areas#new', :as => :new_child_area

  resources :venues
  match 'venues/:id/delete' => 'venues#destroy', :as => :delete_venue
  match '/venues/new/:id(.:format)' => 'venues#new', :as => :new_child_venue

  resources :organisations
  match 'organisations/:id/delete' => 'organisations#destroy', :as => :delete_organisation
  match '/organisations/new/:id(.:format)' => 'organisations#new', :as => :new_child_organisation

  resources :location_tree

  # for devise
  devise_for :users, :path_names => { :sign_up => "register" }
  root :to => "locations#index"

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

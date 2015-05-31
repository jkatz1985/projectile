Rails.application.routes.draw do

  root 'projects#index'

  # Routes for the Informed resource:
  # CREATE
  get "/informeds/new", :controller => "informeds", :action => "new"
  post "/create_informed", :controller => "informeds", :action => "create"

  # READ
  get "/informeds", :controller => "informeds", :action => "index"
  get "/informeds/:id", :controller => "informeds", :action => "show"

  # UPDATE
  get "/informeds/:id/edit", :controller => "informeds", :action => "edit"
  post "/update_informed/:id", :controller => "informeds", :action => "update"

  # DELETE
  get "/delete_informed/:id", :controller => "informeds", :action => "destroy"
  #------------------------------

  # Routes for the Resource resource:
  # CREATE
  get "/resources/new", :controller => "resources", :action => "new"
  post "/create_resource", :controller => "resources", :action => "create"

  # READ
  get "/resources", :controller => "resources", :action => "index"
  get "/resources/:id", :controller => "resources", :action => "show"

  # UPDATE
  get "/resources/:id/edit", :controller => "resources", :action => "edit"
  post "/update_resource/:id", :controller => "resources", :action => "update"

  # DELETE
  get "/delete_resource/:id", :controller => "resources", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Project_like resource:
  # CREATE
  get "/project_likes/new", :controller => "project_likes", :action => "new"
  post "/create_project_like", :controller => "project_likes", :action => "create"

  # READ
  get "/project_likes", :controller => "project_likes", :action => "index"
  get "/project_likes/:id", :controller => "project_likes", :action => "show"

  # UPDATE
  get "/project_likes/:id/edit", :controller => "project_likes", :action => "edit"
  post "/update_project_like/:id", :controller => "project_likes", :action => "update"

  # DELETE
  get "/delete_project_like/:id", :controller => "project_likes", :action => "destroy"
  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get "/projects/new", :controller => "projects", :action => "new"
  post "/create_project", :controller => "projects", :action => "create"

  # READ
  get "/projects", :controller => "projects", :action => "index"
  get "/projects/:id", :controller => "projects", :action => "show"

  # UPDATE
  get "/projects/:id/edit", :controller => "projects", :action => "edit"
  post "/update_project/:id", :controller => "projects", :action => "update"

  # DELETE
  get "/delete_project/:id", :controller => "projects", :action => "destroy"
  #------------------------------

  devise_for :users



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

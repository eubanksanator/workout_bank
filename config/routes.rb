Rails.application.routes.draw do
  # Routes for the Difficulty resource:
  # CREATE
  get '/difficulties/new',      :controller => 'difficulties', :action => 'new',    :as => 'new_difficulty'
  post '/difficulties',         :controller => 'difficulties', :action => 'create', :as => 'difficulties'

  # READ
  get '/difficulties',          :controller => 'difficulties', :action => 'index'
  get '/difficulties/:id',      :controller => 'difficulties', :action => 'show',   :as => 'difficulty'

  # UPDATE
  get '/difficulties/:id/edit', :controller => 'difficulties', :action => 'edit',   :as => 'edit_difficulty'
  patch '/difficulties/:id',    :controller => 'difficulties', :action => 'update'

  # DELETE
  delete '/difficulties/:id',   :controller => 'difficulties', :action => 'destroy'
  #------------------------------

  # Routes for the Muscle_group resource:
  # CREATE
  get '/muscle_groups/new',      :controller => 'muscle_groups', :action => 'new',    :as => 'new_muscle_group'
  post '/muscle_groups',         :controller => 'muscle_groups', :action => 'create', :as => 'muscle_groups'

  # READ
  get '/muscle_groups',          :controller => 'muscle_groups', :action => 'index'
  get '/muscle_groups/:id',      :controller => 'muscle_groups', :action => 'show',   :as => 'muscle_group'

  # UPDATE
  get '/muscle_groups/:id/edit', :controller => 'muscle_groups', :action => 'edit',   :as => 'edit_muscle_group'
  patch '/muscle_groups/:id',    :controller => 'muscle_groups', :action => 'update'

  # DELETE
  delete '/muscle_groups/:id',   :controller => 'muscle_groups', :action => 'destroy'
  #------------------------------

  # Routes for the Exercise resource:
  # CREATE
  get '/exercises/new',      :controller => 'exercises', :action => 'new',    :as => 'new_exercise'
  post '/exercises',         :controller => 'exercises', :action => 'create', :as => 'exercises'

  # READ
  get '/exercises',          :controller => 'exercises', :action => 'index'
  get '/exercises/:id',      :controller => 'exercises', :action => 'show',   :as => 'exercise'

  # UPDATE
  get '/exercises/:id/edit', :controller => 'exercises', :action => 'edit',   :as => 'edit_exercise'
  patch '/exercises/:id',    :controller => 'exercises', :action => 'update'

  # DELETE
  delete '/exercises/:id',   :controller => 'exercises', :action => 'destroy'
  #------------------------------

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

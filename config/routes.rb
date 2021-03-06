Rails.application.routes.draw do
  get 'viewer/show'
  resources :sites 
  #get 'site.name', :controller => 'viewer', :action => 'show'
  get ':name' => 'viewer#show', :as => :view_page
  resources :controllers
  get 'site/name:string' => 'site#name:string'
  
  get 'site/title:string' => 'site#title:string'

  get 'site/body:text' => 'site#body:text'

  resources :mezages
  
  get 'cart/index'

  get 'site/about'
  get 'site/contact'
  get 'site/profile'
 
 
  get '/items' => 'site#items'
  get '/about' => 'site#about'
  #get '/contact' => 'site#contact' 
  get '/profile' => 'site#profile'
 
  get '/Admin' => 'user#admin_login'
  get '/logout' => 'user#logout'
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'
  
 # match '/contact', to 'contacts#new', via 'get'
  resources :items
  
  
 # get '/contacts' => 'contacts#new'
 # resources "contacts", only: [:new, :create]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'site#index'
   root 'items#index'
   # match '*path' => redirect('/'), via: :get
   get '*path' => redirect('/')
  # Example of regular route:
   get 'products/:id' => 'catalog#view'

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

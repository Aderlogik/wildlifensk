Rails.application.routes.draw do
  get 'home/home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#home'
   get 'about' => "home#about"
   get 'contact' => "home#contact"
   get 'photogallery' => "home#photogallery"
   get 'eco_tourism' => "home#eco_tourism"
   
   scope "/mr" do
      match "/home"  => "mr_home#mr_home",     :via => [:get, :post]      #DONE
  end
  
  get 'mr_about' => "mr_home#mr_about"
  get 'mr_contact' => "mr_home#mr_contact"
  get 'mr_photogallery' => "mr_home#mr_photogallery"
  get 'mr_eco_tourism' => "mr_home#mr_eco_tourism"
  get 'mr_range_forest' => "mr_home#mr_range_forest"
  get 'mr_trekking' => "mr_home#mr_trekking"
  get 'mr_booking' => "mr_home#mr_booking"
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

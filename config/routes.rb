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
   get 'nandur_madhameshwar' => "home#nandur_madhameshwar"
   get 'anerdam' => "home#anerdam"
   get 'yawal' => "home#yawal"
   get 'range_forest' => "home#range_forest"
   get 'terms_conditions' => "home#terms_conditions"
   get 'privacy_policy' => "home#privacy_policy"
   get 'copyright_policy' => "home#copyright_policy"
   get 'hyperlinking_policy' => "home#hyperlinking_policy"
   get 'accessibility_statement' => "home#accessibility_statement"
   get 'disclaimer' => "home#disclaimer"
   
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
  get 'mr_nandur_madhameshwar' => "mr_home#mr_nandur_madhameshwar"
  get 'mr_anerdam' => "mr_home#mr_anerdam"
  get 'mr_yawal' => "mr_home#mr_yawal"
  get 'mr_terms_conditions' => "mr_home#mr_terms_conditions"
  get 'mr_privacy_policy' => "mr_home#mr_privacy_policy"
  get 'mr_copyright_policy' => "mr_home#mr_copyright_policy"
  get 'mr_hyperlinking_policy' => "mr_home#mr_hyperlinking_policy"
  get 'mr_accessibility_statement' => "mr_home#mr_accessibility_statement"
  get 'mr_disclaimer' => "mr_home#mr_disclaimer"
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'admin' => "admin#admin"
  get 'signin' => "admin#signin"
  
  match "/insert_news" => "admin#insert_news", :via => :post
#  post 'insert_news' => "admin#insert_news" 
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

Ciistacna::Application.routes.draw do
  resources :auspiciadores

  devise_for :users

  get "admin/index" => "admin#index"
  get "admin" => "admin#index"

  get "inicios/ponentes" => "inicios#ponentes"
  get "inicios/ponentes_detalle/:id" => "inicios#ponentes_detalle#id"
  get "inicios/informacion" => "inicios#informacion"
  get "inicios/inscritos" => "inicios#inscritos"
  get "inicios/galeria" => "inicios#galeria"
  get "inicios/galeria_detalle/:id" => "inicios#galeria_detalle#id"
  get "inicios/nosotros" => "inicios#nosotros"
  get "inicios/lugar" => "inicios#lugar"

  get "inicios/contacto" => "inicios#contacto"
  post "inicios/contacto_envio" => "inicios#contacto_envio"
  get "inicios/contacto_ok" => "inicios#contacto_ok"

  post "inicios/inscripciones"=>"inicios#inscripciones"
  get "inicios/inscripciones_ok"=>"inicios#inscripciones_ok"

  get "inicios/paginas/:id" => "inicios#paginas#id"
  get "inicios/auspiciadores" => "inicios#auspiciadores"
  get "inicios/auspiciadore_detalle/:id" => "inicios#auspiciadore_detalle#id"




  resources :inscripciones

  resources :contactos

  resources :fotos

  resources :ponentes

  resources :paginas

  resources :notices

  get "inicios/index"

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
  devise_for :users, :path => "administracion", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  root :to => 'inicios#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

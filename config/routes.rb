ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller

  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.

  # session pages
  map.root                         :controller => 'sessions', :action => 'index'
  map.login     '/login',          :controller => 'sessions', :action => 'create'
  map.logout    '/logout',         :controller => 'sessions', :action => 'destroy'
  map.locales   'locales/:locale', :controller => 'sessions', :action => 'locale'

  # static pages
  map.contact   '/contact',  :controller => 'pages', :action => 'contact'
  map.calendar  '/calendar', :controller => 'pages', :action => 'calendar'
  map.about     '/about',    :controller => 'pages', :action => 'about'
  map.help      '/help',     :controller => 'pages', :action => 'help'
  map.terms     '/terms',    :controller => 'pages', :action => 'terms'

  # user pages
  map.home            '/home',        :controller => 'users', :action => 'home'
  map.register        '/register',    :controller => 'users', :action => 'new'
  map.forgot          '/forgot',          :controller => 'users', :action => 'forgot'
  map.forgot_password '/forgot_password', :controller => 'users', :action => 'forgot_password'
  map.change_password '/change_password', :controller => 'users', :action => 'change_password'
  map.predictions     '/predictions', :controller => 'users', :action => 'predictions'
  map.phases          'phases/:phase',      :controller => 'users', :action => 'phases'
  map.resources       :users

  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
end

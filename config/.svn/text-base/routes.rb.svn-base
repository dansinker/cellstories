ActionController::Routing::Routes.draw do |map|
  map.resources :sessions
  # The priority is based upon order of creation: first created -> highest priority.
  
  # Sample of regular route:
  # map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action


  # Sample of named route:
  # map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # You can have the root of your site routed by hooking up '' 
  # -- just remember to delete public/index.html.
  
  # map.connect '', :controller => "stories"
  map.connect '', :controller => 'libraries', :action => 'shelf'
  map.welcome 'welcome.html', :controller => 'info', :action => 'welcome'
  
  map.login 'login', :controller => 'sessions', :action => 'new'
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  
  map.admin 'admin', :controller => 'stories', :action => 'list'
  
  map.weekend 'weekend_edition', :controller => 'libraries', :action => 'index'
  map.shelf 'shelf', :controller => 'libraries', :action => 'shelf'
  
  map.about 'about', :controller => 'info', :action => 'mobile_about'
  map.submit 'submit', :controller => 'info', :action => 'mobile_submit'
  map.follow 'follow', :controller => 'info', :action => 'mobile_follow'
  map.partners 'partners', :controller => 'info', :action => 'mobile_partners'
  
  
  map.connect 'submit.html', :controller => 'info', :action => 'mobile_submit' 
  
  map.connect 'feed.xml', :controller => 'stories', :action => 'feed'


  # Allow downloading Web Service WSDL as a file with an extension
  # instead of a file named 'wsdl'
  map.connect ':controller/service.wsdl', :action => 'wsdl'

  # Install the default route as the lowest priority.
  map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action/:id'
  
end

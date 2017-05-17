Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :property_types
  end

end

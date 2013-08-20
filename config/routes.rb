Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :property_types
  end

end

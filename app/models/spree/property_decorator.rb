module Spree
  Property.class_eval do
    belongs_to :property_type
    attr_accessible :property_type_id
  end
end

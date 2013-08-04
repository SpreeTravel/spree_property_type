module Spree
  Property.class_eval do
    belongs_to :property_type
    attr_accessible :property_type_id

    def property_type_name
      property_type.name rescue 'Properties'
    end

    def property_type_show
      property_type.show rescue 'left'
    end

  end
end

module Spree
  ProductProperty.class_eval do

    def self.hash_for(part)
      product_properties_for_this_part = self.joins(:property)
      hash = {}
      product_properties_for_this_part.each do |pp|
        property = pp.property
        next if property.property_type_show != part.to_s
        name = property.property_type_presentation
        hash[name] ||= []
        hash[name] << pp
      end
      hash
    end

  end
end
module Spree
  ProductProperty.class_eval do

    # TODO: ahora mismo una property que esté en mas de un grupo
    # sale en el primero de los grupos, hay que pensar si tiene sentido
    # o no, que la property salga en todos los grupos
    # TODO: ademas hay un bug ahi que no he descubierto, que provoca esto
    def self.hash_for(part)
      product_properties_for_this_part = self.joins(:property)
      hash = {}
      #product_properties_for_this_part.each do |pp|
      #  property = pp.property
      #  next unless property.property_type_show.include?(part.to_s)
      #  name = property.property_type_presentation
      #  hash[name] ||= []
      #  hash[name] << pp
      #end
      hash
    end

  end
end

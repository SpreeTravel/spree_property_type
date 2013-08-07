module Spree
  Property.class_eval do
    belongs_to :property_type
    attr_accessible :property_type_id, :property_icon_attributes, :property_icon
    has_one :property_icon, class_name: 'Spree::PropertyIcon', :as => :viewable
    accepts_nested_attributes_for :property_icon

    def icon
      property_icon || Spree::PropertyIcon.new
    end

    def property_type_name
      property_type.name rescue 'Properties'
    end

    def property_type_show
      property_type.show rescue Constant::PROPERTY_SHOW_LEFT_NORMAL
    end

  end
end

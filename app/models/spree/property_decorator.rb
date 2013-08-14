module Spree
  Property.class_eval do
    belongs_to :property_type
    attr_accessible :property_type_id, :icon
    has_attached_file :icon,
                      styles: { mini: '24x24#', small: '48x48#', normal: '128x128#' },
                      default_style: :mini,
                      url: '/spree/taxons/:id/:style/:basename.:extension',
                      path: ':rails_root/public/spree/taxons/:id/:style/:basename.:extension',
                      default_url: '/assets/default_property.png'

    def property_type_name
      property_type.name rescue 'Properties'
    end

    def property_type_show
      property_type.show rescue [ConstantPropertyType::PROPERTY_SHOW_LEFT_NORMAL  ]
    end

    def property_type_presentation
      property_type.presentation rescue 'Properties'
    end

  end
end

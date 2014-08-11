module Spree
  Property.class_eval do
    belongs_to :property_type
    has_attached_file :icon,
                      styles: { mini: '24x24>', original: '48x48>' },
                      default_style: :mini,
                      url: '/spree/taxons/:id/:style/:basename.:extension',
                      path: ':rails_root/public/spree/taxons/:id/:style/:basename.:extension',
                      default_url: '/assets/default_property.png'
    validates_attachment_content_type :icon, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    def property_type_name
      property_type.name rescue 'Properties'
    end

    def property_type_show
      property_type.show rescue [PROPERTY_SHOW_LEFT_NORMAL]
    end

    def property_type_presentation
      property_type.presentation rescue 'Properties'
    end

  end
end

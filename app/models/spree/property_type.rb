module Spree
  class PropertyType < ActiveRecord::Base

    has_many :properties

    def self.show_where(options = {})
      {
          Spree::PROPERTY_SHOW_LEFT_NORMAL  => 'Left part - Name:Value',
          Spree::PROPERTY_SHOW_LEFT_NAME    => 'Left part - Name only',
          Spree::PROPERTY_SHOW_LEFT_ICON    => 'Left part - Icon only',
          Spree::PROPERTY_SHOW_LEFT_BOTH    => 'Left part - Icon:Value',
          Spree::PROPERTY_SHOW_DESC_NORMAL  => 'Below description - Name:Value',
          Spree::PROPERTY_SHOW_DESC_NAME    => 'Below description - Name only',
          Spree::PROPERTY_SHOW_DESC_ICON    => 'Below description - Icon only',
          Spree::PROPERTY_SHOW_DESC_BOTH    => 'Below description - Icon:Value',
          Spree::PROPERTY_SHOW_INDEX_NORMAL => 'Products index - Name:Value',
          Spree::PROPERTY_SHOW_INDEX_NAME   => 'Products index - Name only',
          Spree::PROPERTY_SHOW_INDEX_ICON   => 'Products index - Icon only',
          Spree::PROPERTY_SHOW_INDEX_BOTH   => 'Products index - Icon:Value',
      }
    end

    def show_parts
      (self.show || '').split('|')
    end

    def show_types
      list = []
      self.show_parts.each do |part|
        list << Spree::PropertyType.show_where[part]
      end
      list
    end
  end
end



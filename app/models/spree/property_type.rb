module Spree
  class PropertyType < ActiveRecord::Base

    has_many :properties
    attr_accessible :show, :name

    def self.show_where(options = {})
      {
          ConstantPropertyType::PROPERTY_SHOW_LEFT_NORMAL  => 'Left part - Name:Value',
          ConstantPropertyType::PROPERTY_SHOW_LEFT_NAME    => 'Left part - Name only',
          ConstantPropertyType::PROPERTY_SHOW_LEFT_ICON    => 'Left part - Icon only',
          ConstantPropertyType::PROPERTY_SHOW_LEFT_BOTH    => 'Left part - Icon:Value',
          ConstantPropertyType::PROPERTY_SHOW_DESC_NORMAL  => 'Below description - Name:Value',
          ConstantPropertyType::PROPERTY_SHOW_DESC_NAME    => 'Below description - Name only',
          ConstantPropertyType::PROPERTY_SHOW_DESC_ICON    => 'Below description - Icon only',
          ConstantPropertyType::PROPERTY_SHOW_DESC_BOTH    => 'Below description - Icon:Value',
          ConstantPropertyType::PROPERTY_SHOW_INDEX_NORMAL => 'Products index - Name:Value',
          ConstantPropertyType::PROPERTY_SHOW_INDEX_NAME   => 'Products index - Name only',
          ConstantPropertyType::PROPERTY_SHOW_INDEX_ICON   => 'Products index - Icon only',
          ConstantPropertyType::PROPERTY_SHOW_INDEX_BOTH   => 'Products index - Icon:Value',
      }
    end

    def show_parts
      self.show.split('|')
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



module Spree
  class PropertyType < ActiveRecord::Base

    has_many :properties
    attr_accessible :show, :name

    def self.show_where(options = {})
      {
          Constant::PROPERTY_SHOW_LEFT_NORMAL  => 'Left part - Name:Value',
          Constant::PROPERTY_SHOW_LEFT_NAME    => 'Left part - Name only',
          Constant::PROPERTY_SHOW_LEFT_ICON    => 'Left part - Icon only',
          Constant::PROPERTY_SHOW_LEFT_BOTH    => 'Left part - Icon:Value',
          Constant::PROPERTY_SHOW_DESC_NORMAL  => 'Below description - Name:Value',
          Constant::PROPERTY_SHOW_DESC_NAME    => 'Below description - Name only',
          Constant::PROPERTY_SHOW_DESC_ICON    => 'Below description - Icon only',
          Constant::PROPERTY_SHOW_DESC_BOTH    => 'Below description - Icon:Value',
          Constant::PROPERTY_SHOW_INDEX_NORMAL => 'Products index - Name:Value',
          Constant::PROPERTY_SHOW_INDEX_NAME   => 'Products index - Name only',
          Constant::PROPERTY_SHOW_INDEX_ICON   => 'Products index - Icon only',
          Constant::PROPERTY_SHOW_INDEX_BOTH   => 'Products index - Icon:Value',
      }
    end

    def show_type
      Spree::PropertyType.show_where[self.show]
    end
  end
end



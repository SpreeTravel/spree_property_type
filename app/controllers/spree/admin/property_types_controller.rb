module Spree
  module Admin
    class PropertyTypesController < ResourceController

      after_filter :set_property_type_show, :only => [:create, :update]

      def set_property_type_show
        list = []
        Spree::PropertyType.show_where.each do |k,v|
          list << k if params["pts_#{k}"]
        end
        @property_type.show = list.join('|')
        @property_type.save
      end
    end
  end
end

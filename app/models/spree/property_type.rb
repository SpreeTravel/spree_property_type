module Spree
  class PropertyType < ActiveRecord::Base

    has_many :properties
    attr_accessible :show, :name

    def self.show_where(options = {})
      {
          :left => 'Left Part',
          :right_item => 'Right Item List',
          :right_desc => 'Right Description List'
      }
    end

    def show_type
      Spree::PropertyType.show_where[self.show.to_sym]
    end
  end
end



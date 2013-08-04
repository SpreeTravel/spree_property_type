class PropertyAddType < ActiveRecord::Migration
    def up
        add_column :spree_properties, :property_type_id, :integer, :default => nil
    end

    def down
        remove_column :spree_properties, :property_type_id
    end
end

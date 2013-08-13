class AddPresentationToPropertyType < ActiveRecord::Migration

  def up
    add_column :spree_property_types, :presentation, :string
  end

  def down
    remove_column :spree_property_types, :presentation
  end
end

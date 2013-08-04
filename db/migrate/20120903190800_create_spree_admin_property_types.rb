class CreateSpreeAdminPropertyTypes < ActiveRecord::Migration
  def change
    create_table :spree_property_types do |t|
      t.string :name
      t.string :show

      t.timestamps
    end
  end
end

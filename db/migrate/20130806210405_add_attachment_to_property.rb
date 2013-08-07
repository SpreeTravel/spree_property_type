class AddAttachmentToProperty < ActiveRecord::Migration

  def up
    add_attachment :spree_properties, :icon
  end

  def down
    remove_attachment :spree_properties, :icon
  end
end

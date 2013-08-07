module Spree
  class PropertyIcon < Asset
    validates_attachment_presence :attachment
    validate :no_attachment_errors

    attr_accessible :alt, :attachment, :position, :viewable_type, :viewable_id

    has_attached_file :attachment,
                      styles: { mini: '24x24#', small: '48x48#', large: '100x100#'},
                      default_style: :small,
                      url: '/spree/icons/properties/:id/:style_:basename.:extension',
                      path: ':rails_root/public/spree/icons/properties/:id/:style_:basename.:extension',
                      convert_options: { all: '-strip -auto-orient' }

    def no_attachment_errors
      unless attachment.errors.empty?
        # uncomment this to get rid of the less-than-useful interrim messages
        # errors.clear
        errors.add :attachment, "Paperclip returned errors for file '#{attachment_file_name}' - check ImageMagick installation or image source file."
        false
      end
    end
  end
end

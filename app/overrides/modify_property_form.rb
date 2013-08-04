Deface::Override.new(
    :virtual_path => 'spree/admin/properties/_form',
    :name => 'modify_property_form',
    :replace => "[data-hook='admin_property_form']",
    :partial => "spree/admin/properties/property_form"
)

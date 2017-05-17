Deface::Override.new(
    virtual_path: 'spree/admin/shared/sub_menu/_configuration',
    name: 'add_property_type_to_admin_menu',
    insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
    text: "<%= configurations_sidebar_menu_item(Spree.t(:property_types), admin_property_types_path) if can? :manage, Spree::PropertyType %>"
)

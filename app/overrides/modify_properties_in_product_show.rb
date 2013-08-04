Deface::Override.new(
    :virtual_path => 'spree/products/show',
    :name => 'modify_properties_in_product_show',
    :replace => "[data-hook='product_properties']",
    :partial => "spree/products/enhanced_properties"
)